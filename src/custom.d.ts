// Todo: fix type error when window.ethereum.enable()
// these solutions did not work...
declare const window: Window &
  typeof globalThis & {
    ethereum: any
  }

// declare global {
//   interface Window {
//     ethereum: any
//   }
// }

declare module '*.svg' {
  const content:
    | React.FunctionComponent<React.SVGAttributes<SVGElement>>
    | FunctionComponent<SVGAttributes<SVGElement>>
    | { alt: string }

  export default content
}

declare module '*.woff2'
declare module '*.ttf'

declare module '*.json' {
  const value: any

  export default value
}
