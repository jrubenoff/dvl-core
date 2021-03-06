class Views::Home::Index < Views::Home
  def main
    h2 'Base Styles'


    h3 'Sizes and Spacing'

    p %{Our typographical <em>vertical rhythm</em> is 8px. We use a multiple of that number (24px) to set the line height of our text.}.html_safe

    div(class: 'docs_rhythm') {
      h2 'The Department of Better Technology'
      p 'We help governments deliver great digital services to the people who depend on them.'
      form {
        input(type: 'text', placeholder: 'Enter your email address', 'aria-label' => 'Email')
        button 'Subscribe', class: 'button info'
      }
    }

    p %{Always use the <code>$rhythm</code> or <code>$lineHeight</code> variables to set dimensions and spacing for UI elements.}.html_safe

    hr

    guide 'do',
      %{
        <p><strong>Do</strong> use multiples of <code>$rhythm</code> and <code>$lineHeight</code> to specify the dimensions and padding of an item.</p>
      }.html_safe,
      'dont',
      %{
        <p><strong>Avoid</strong> using <code>px</code>, <code>em</code> or <code>rem</code> units to specify spacing or sizes.</p>
      }.html_safe

    guide 'dont',
      %{
        <p>Unless you're centering elements within a container, <strong>avoid</strong> dividing <code>$rhythm</code> or <code>$lineHeight</code> into fractions, or multiplying them by non-whole numbers.</p>
      }.html_safe,
      'do',
      %{
         <p><strong>Do</strong> use multiples of <code>$rhythm</code> or <code>$lineHeight</code> when styling.</p>
      }.html_safe


    docs 'Headings', %{
      div(class: 'dvlcore_headings') {
        h1 'Heading 1 56/80px'
        h2 'Heading 2 36/56px'
        h3 'Heading 3 23/36px'
        h4 'Heading 4 16/24px'
        h5 'Heading 5 13/24px'
      }
    }

    docs 'Paragraph-Level Text', %{
      p 'Our default text styles are 16/24px. You should be styling most text with this default.'.html_safe

      blockquote 'Use blockquotes in blog posts, support documentation, and other prose writing when quoting another source. They are usually unnecessary in interface design.'

      p %{Text with inline code, or developer-oriented data like API keys, should be wrapped in a <code>&lt;code&gt;</code> tag.}.html_safe

      pre %{## Code which wraps to multiple lines should be
## placed in a <pre> tag.}

      p %{Use the <code>&lt;sub&gt;</code> and <code>&lt;sup&gt;</code> tags to style superscript and subscript text. For example: &ldquo;The 8<sup>th</sup> molecule of H<sub>2</sub>O.&rdquo;}.html_safe

      p %{<del>Redacted text</del> should be styled with <code>&lt;del&gt;</code> tags.}.html_safe
    }
    h3 'Small Text Sizes'

    p %{<code>$fontSmall</code>: Small text should be used for displaying tertiary information.}.html_safe, class: 'docs_fontsmall'
    p %{<code>$fontSmaller</code>: Smaller text is great for explaining primary and secondary actions.}.html_safe, class: 'docs_fontsmaller'
    p %{<code>$fontSmallest</code>: Use the smallest text size sparingly.}.html_safe, class: 'docs_fontsmallest'

    hr

    guide 'dont',
    %{
      <img src="/images/largetype_dont.png">
      <p><strong>Don&#39;t</strong> use multiple lines of larger text. Either use the default font size, or truncate a single line of larger text with ellipses.</p>
    }.html_safe,
    'do',
    %{
      <img src="/images/largetype_do.png">
      <p><strong>Do</strong> use multiple lines of smaller text to provide UI microcopy or tertiary information.</p>
    }.html_safe

    guide 'do',
    %{
      <img src="/images/hierarchy_do.png">
      <p><strong>Do</strong> use header styles, smaller text sizes, and <a href="/components#alerts">alerts</a> to establish hierarchy and call out bits of text.</p>
    }.html_safe,
    'dont',
    %{
      <img src="/images/hierarchy_dont.png">
      <p><strong>Don&#39;t</strong> use boldface text for long sentences, or color the text to emphasize an action. This negatively impacts legibility.</p>
    }.html_safe

    guide 'do',
    %{
      <img src="/images/smallcaps_do.png">
      <p><strong>Do</strong> apply small caps to make actions or important data more visible at smaller font sizes.</p>
    },
    'dont',
    %{
      <img src="/images/smallcaps_dont.png">
      <p><strong>Never</strong> apply small caps to our display typeface.</p>
    }.html_safe

    docs 'Lists', %{
      div(class: 'grid') {
        div(class: 'item lap_three_columns') {
          ul(class: 'formatted_list') {
            li 'Item 1'
            li 'Item 2'
            li "Item 3 is an example of a longer item that may occasionally wrap to multiple lines."
            li 'Item 4'
            li 'Item 5'
            li 'Item 6'
            li 'Item 7'
          }
        }

        div(class: 'item lap_three_columns') {
          ol(class: 'formatted_list') {
            li 'Item 1'
            li 'Item 2'
            li "Item 3 is an example of a longer item that may occasionally wrap to multiple lines."
            li 'Item 4'
            li 'Item 5'
            li 'Item 6'
            li 'Item 7'
          }
        }
      }
    }, hint: %{By default, lists are unstyled. Use the <code>.formatted_list</code> class to create bulleted and numbered lists.}.html_safe

    docs 'Definition Lists', %{
      dl {
        dt 'Name'
        dd 'Barack Obama'
        dt 'Email Address'
        dd 'barack.obama@whitehouse.gov'
      }
    }, hint: 'Use definition lists to format labeled lists and metadata, like the contents of a form submissions or the sender information in an email.'

    docs 'Images and Captions', %{
      figure {
        img(src: 'https://i.imgur.com/OW9eCju.jpg', alt: 'Mount Rushmore')
        figcaption 'Mount Rushmore, Keystone, South Dakota', class: 'formatted'
      }
    }

    h3 'Links'

    docs 'Default', %{
      p %{DOBT believes in the power of open data. It encourages transparency in government, and sometimes, <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">it even saves lives</a>.}.html_safe
    }, sub: true

    docs 'Button links', %{
      p {
        button('Example', class: 'button_link')
      }
    }, hint: %{Add the <code>.button_link</code> class to any <code>&lt;button&gt;</code> tag to make it look like a link.}.html_safe, sub: true

  end
end
