;; Test suite for org2blog

(ert-deftest org2blog-test-replace-pre ()
  "Test if replacing pre-blocks with sourcecode blocks works."

  (let* ((sample-html "<p>
Some code blocks --
</p>



<pre class=\"src src-emacs-lisp\">(message <span style=\"color: #8b2252;\">\"hello world\"</span>)
</pre>



<pre class=\"example\">(message \"hello world\")
</pre>



<pre class=\"src src-python\"><span style=\"color: #a020f0;\">print</span> 100
</pre>



<pre class=\"example\">print 100
</pre>
")
	 (output-html (org2blog/wp-replace-pre sample-html)))
    (message output-html)
    ))
