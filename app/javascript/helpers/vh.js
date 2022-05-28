const setVh = () => {
  let stabiloHeigtht = window.innerHeight * 0.01;
  document.documentElement.style.setProperty("--vh", `${stabiloHeigtht}px`);
  return stabiloHeigtht
}

const vh = () => {
  setVh();
};

const vhOnResize = () => {
  window.addEventListener("resize", () => {
    setVh()
  });
};

export { vh, vhOnResize };