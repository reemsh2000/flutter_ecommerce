var differentProducts = [
  "https://www.consciouslifeandstyle.com/wp-content/uploads/2021/06/Zero-Waste-hair-care-cover-image.jpg",
  "https://media.allure.com/photos/6208768e8a6809dba374d9e3/master/pass/2-14%20best%20skincare%20launches%20v3.jpg",
  "https://www.emergebeautiful.com/content/dam/unilever/emerge/united_states_of_america/photography_and_pictures/emerge_product_image_website_herobanner_-35698688-jpg.jpg",
  "https://i.pinimg.com/564x/c2/e4/1e/c2e41eab98b140aebb43dde74848ed66.jpg",
  "https://i.pinimg.com/564x/c1/08/be/c108bec38e81cd9f047daa6e0022579e.jpg",
  "https://i.pinimg.com/564x/c2/88/f8/c288f84c89194d33a1819f61946b34e6.jpg"

];
var hairCareList = [
  "https://cdn.trendhunterstatic.com/phpthumbnails/391/391535/391535_1_800.jpeg",
  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbz-hairspray-index-1523306821.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
  "https://img.grouponcdn.com/deal/2xhkroFMM2AzkyiJiZYpFyTgisq1/2x-1400x840/v1/c870x524.jpg",
  "https://www.emergebeautiful.com/content/dam/unilever/emerge/united_states_of_america/pack_shot/emerge_glamor_leaveincond-35439929-png.png",
  "https://i.pinimg.com/564x/01/8d/70/018d704ff37465701fd4bc5cc7905fef.jpg",
  "https://i.pinimg.com/564x/33/f9/da/33f9daf9ef41ec8db665798db5a4b704.jpg",
  "https://i.pinimg.com/564x/48/ea/69/48ea699215f03f62be394fbdcf710a03.jpg",
  "https://i.pinimg.com/564x/08/7f/d7/087fd7803cd9f1f7b0c80f8ff34026d7.jpg",
  "https://i.pinimg.com/564x/5f/ad/17/5fad170d2dba78f2637ed9e92c5bb305.jpg",
  "https://i.pinimg.com/564x/25/39/65/2539651683e681d07614187f2684c6f8.jpg"
];
var skinCareList = [
  "https://i.insider.com/5ff366d26056b60018721cc3?width=1000&format=jpeg&auto=webp",
  "https://www.cnet.com/a/img/resize/963f08ee88d2e2e299333165f917d22b3de78aef/2019/12/31/8672214d-129f-40dc-b53a-be9d8085faf5/amroutine.jpg?auto=webp&fit=crop&height=630&width=1200",
  "https://www.refinery29.com/images/10832426.jpg?format=pjpg&auto=webp&resize-filter=lanczos2&quality=65&sharpen=a3%2Cr3%2Ct0&optimize=low&width=1200&height=1200&crop=1%3A1%2Csmart&enable=upscale",
  "https://i.insider.com/601029561d2df20018b70d54?width=700",
  "https://i.pinimg.com/564x/a2/57/9a/a2579a17adf8b7f7efff36c622672d59.jpg",
  "https://i.pinimg.com/564x/2d/87/00/2d87008719b9fcb080704cf308849b27.jpg",
  "https://i.pinimg.com/564x/20/4d/46/204d46e003c453cba9eada6b0e76fc1d.jpg",
  "https://i.pinimg.com/564x/63/f6/59/63f659722e8b583b3d01a407f2817726.jpg",
  "https://i.pinimg.com/564x/27/06/9e/27069ef4fc571b10c10adb6f748b0405.jpg",
  "https://i.pinimg.com/564x/80/39/75/80397532513b9f3b9948bac6eee0d297.jpg",
  "https://i.pinimg.com/564x/ad/6c/d1/ad6cd10301091493573f701e427eeea9.jpg"

];
var bodyCareList = [
  "https://i.insider.com/5ff366d26056b60018721cc3?width=1000&format=jpeg&auto=webp",
  "https://www.cnet.com/a/img/resize/963f08ee88d2e2e299333165f917d22b3de78aef/2019/12/31/8672214d-129f-40dc-b53a-be9d8085faf5/amroutine.jpg?auto=webp&fit=crop&height=630&width=1200",
  "https://www.refinery29.com/images/10832426.jpg?format=pjpg&auto=webp&resize-filter=lanczos2&quality=65&sharpen=a3%2Cr3%2Ct0&optimize=low&width=1200&height=1200&crop=1%3A1%2Csmart&enable=upscale",
  "https://i.insider.com/601029561d2df20018b70d54?width=700",
  "https://i.pinimg.com/564x/ba/ef/4f/baef4f88428c2cb6e688c5cc2c733584.jpg",
  "https://i.pinimg.com/564x/31/b5/a0/31b5a0a8c5f5752e765f1ddceaf252c5.jpg",
  "https://i.pinimg.com/564x/6b/db/4e/6bdb4e8955e0e57e8fe377210f10628d.jpg",
  "https://i.pinimg.com/564x/8a/22/a3/8a22a3d619413a7b6077c200323df379.jpg",
  "https://i.pinimg.com/564x/57/96/5f/57965f84eba65fe2879f0ddf81db6384.jpg",
  "https://i.pinimg.com/564x/d2/78/af/d278af3cb338441b7fd9294140a2266e.jpg"
];
var makeupList = [
  "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F14%2F2021%2F08%2F31%2FReaders-Choice-2021-5.jpg",
  "https://i.guim.co.uk/img/media/7d2ecb94383d9ed419aa9cbcc79ccba66cb8faca/0_176_3872_2323/master/3872.jpg?width=700&quality=85&auto=format&fit=max&s=25102e285d3f6fe44ba2f3b8b9ddaf7a",
  "https://kdvr.com/wp-content/uploads/sites/11/2021/10/1040x585-2021-1014-x-most-popular-eye-makeup-on-sephora-8a8582.jpg",
  "https://www.southindiafashion.com/wp-content/uploads/2020/03/Foundation.jpg",
  "https://i.pinimg.com/564x/a1/2d/fd/a12dfd4798dc977b426ad5e6d6f6cb16.jpg",
  "https://i.pinimg.com/564x/97/7f/a3/977fa3f49075766a51134ff5bef9fb06.jpg",
  "https://i.pinimg.com/564x/13/48/e1/1348e139cade85abca5548f88768acaf.jpg",
  "https://i.pinimg.com/564x/15/2e/14/152e14b16ffce3ae901e18403e773192.jpg",
  "https://i.pinimg.com/564x/47/b2/df/47b2df24675e0d11fbd80d89357f7edd.jpg",
  "https://i.pinimg.com/564x/73/ce/79/73ce79d5f3f741d0bd5fd2d420c3b572.jpg",
  "https://i.pinimg.com/564x/d3/62/bf/d362bf1240c39449ac502dca33f11d18.jpg",
  "https://i.pinimg.com/564x/cd/f6/8e/cdf68e0c09bcf2b290338f01496b22ea.jpg"
];
