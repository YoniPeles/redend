(defun count-extension-files (extension)
    (pipe (sh ls -a) (sh grep ,extension) (sh wc -l)))

(sh echo (count-extension-files ".lsp"))