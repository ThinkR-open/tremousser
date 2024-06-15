#' @noRd
trem_accordion_ <- component("Accordion")

#' Accordion component
#' @family layout
#' @family accordion
#' @param defaultOpen Whether the accordion should be open by default.
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Accordion documentation](https://storybook.tremor.so/?path=/docs/ui-layout-accordion--docs)
#' @export
trem_accordion <- function(..., defaultOpen = FALSE) {
  trem_accordion_(
    ...,
    defaultOpen = defaultOpen
  )
}

#' Accordion component
#' @family accordion
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Accordion documentation](https://storybook.tremor.so/?path=/docs/ui-layout-accordion--docs)
#' @export
trem_accordion_header <- component("AccordionHeader")

#' Accordion component
#' @family accordion
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Accordion documentation](https://storybook.tremor.so/?path=/docs/ui-layout-accordion--docs)
#' @export
trem_accordion_body <- component("AccordionBody")

#' AccordionList component
#' @family accordion
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [AccordionList documentation](https://storybook.tremor.so/?path=/story/ui-layout-accordionlist--with-less-than-three-children)
#' @export
trem_accordion_list <- component("AccordionList")

#' Divider component
#' @family layout
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Divider documentation](https://storybook.tremor.so/?path=/docs/ui-layout-divider--docs)
#' @export
trem_divider <- component("Divider")

#' Card component
#' @family layout
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Card documentation](https://storybook.tremor.so/?path=/docs/ui-layout-card--docs)
#' @export
trem_card <- component("Card")

#' Flex component
#' @family layout
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Flex documentation](https://storybook.tremor.so/?path=/docs/ui-layout-flex--docs)
#' @export
trem_flex <- component("Flex")

#' Grid component
#' @family layout
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Grid documentation](https://storybook.tremor.so/?path=/docs/ui-layout-grid--docs)
#' @export
trem_grid <- component("Grid")
