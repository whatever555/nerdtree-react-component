if exists('loaded_nerd_tree_react_components')
    finish
endif

let loaded_nerd_tree_react_components = 1


function! s:setupNERDTreeListeners(listener) abort
    call g:NERDTreePathNotifier.AddListener('init', a:listener.OnInit)
endfunction

function! s:onNERDTreeInit() abort
    call NERDTreeAddMenuItem({'text': 'add a (z)eact component', 'shortcut': 'z', 'callback': 'NERDTreeAddReactComponentNode'})
endfunction

augroup nerdtreereactcomponentplugin
    autocmd!
    autocmd User NERDTreeInit call s:onNERDTreeInit()
augroup end

function! s:NTRCInputPrompt(action)
    if a:action ==# 'react'
        let title = 'Add a react component'
        let info = 'Enter the component name to be created'
        let minimal = 'Add react component:'

    if g:NERDTreeMenuController.isMinimal()
        redraw! " Clear the menu
        return minimal . ' '
    else
        let divider = '=========================================================='
        return title . "\n" . divider . "\n" . info . "\n"
    end
endfunction

"FUNCTION: NERDTreeAddReactComponentNode(){{{1
function! NERDTreeAddReactComponentNode()
    let curDirNode = g:NERDTreeDirNode.GetSelected()
    let prompt = s:NTRCInputPrompt('react')
    let newNodeName = input(prompt, curDirNode.path.str() . nerdtree#slash(), 'file')

    if newNodeName ==# ''
        call nerdtree#echo('React Component Node Creation Aborted.')
        return
    endif

    try
        let filesAndFolders = [ newNodeName . '/index.tsx', newNodeName . "/__tests__/index.tsx",  newNodeName . '/__mocks__/index.mock.ts', newNodeName . '/__stories/index.tsx' ]

        let newPath = g:NERDTreePath.Create(filesAndFolders[0])
        let parentNode = b:NERDTree.root.findNode(newPath.getParent())
        let newTreeNode = g:NERDTreeFileNode.New(newPath, b:NERDTree)
        " Emptying g:NERDTreeOldSortOrder forces the sort to
        " recalculate the cached sortKey so nodes sort correctly.
        let g:NERDTreeOldSortOrder = []

        if empty(parentNode)
            call b:NERDTree.root.refresh()
            call b:NERDTree.render()
        elseif parentNode.isOpen || !empty(parentNode.children)
            call parentNode.addChild(newTreeNode, 1)
            call NERDTreeRender()
            call newTreeNode.putCursorHere(1, 0)
        endif

        let filesAdded = 1
        while filesAdded < len(filesAndFolders)
            let newPath = g:NERDTreePath.Create(filesAndFolders[filesAdded])
            let parentNode = b:NERDTree.root.findNode(newPath.getParent())
            let newTreeNode = g:NERDTreeFileNode.New(newPath, b:NERDTree)
            " Emptying g:NERDTreeOldSortOrder forces the sort to
            " recalculate the cached sortKey so nodes sort correctly.
            let g:NERDTreeOldSortOrder = []

            if empty(parentNode)
                call b:NERDTree.root.refresh()
                call b:NERDTree.render()
            elseif parentNode.isOpen || !empty(parentNode.children)
                call parentNode.addChild(newTreeNode, 1)
                call NERDTreeRender()
                call newTreeNode.putCursorHere(1, 0)
            endif
            let filesAdded +=1
        endwhile


        redraw!
    catch /^NERDTree/
        call nerdtree#echoWarning('Node Not Created.')
    endtry
endfunction
