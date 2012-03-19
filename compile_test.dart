#import('lib/hart.dart');

main() {
    String template = '''
!!! 5
%html
  %head
    %title= title
    %script
      :cdata
        foo
    %script{ src: 'jquery.js' }
  %body.one.two.three
    %h1 Welcome
    %ul#menu{ class: newClass}
      %li.first#list one
      %li two
      %li.last three
      %li
        %ul
          %li nested
    - if (items !== null)
    %ul
      - each item in items
        %li= item
    %div.article.first
      article text here
      and here
''';
    Hart.compile(template, 'template.dart');
}
