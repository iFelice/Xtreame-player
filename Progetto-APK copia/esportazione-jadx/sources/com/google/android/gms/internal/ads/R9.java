package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import java.util.Collections;
import java.util.Map;
import p090l3.C3097p;

/* JADX INFO: loaded from: classes.dex */
public final class R9 implements N9 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Map f16214J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p083k3.b f16215G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0930Tb f16216H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0864Of f16217I;

    static {
        String[] strArr = {"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"};
        Integer[] numArr = {1, 2, 3, 4, 5, 6, 7};
        p132r.f fVar = new p132r.f(7);
        for (int i8 = 0; i8 < 7; i8++) {
            fVar.put(strArr[i8], numArr[i8]);
        }
        f16214J = Collections.unmodifiableMap(fVar);
    }

    public R9(p083k3.b bVar, C0930Tb c0930Tb, C0864Of c0864Of) {
        this.f16215G = bVar;
        this.f16216H = c0930Tb;
        this.f16217I = c0864Of;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:109:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:153:0x02ee A[Catch: all -> 0x006f, TryCatch #1 {all -> 0x006f, blocks: (B:25:0x0063, B:27:0x0067, B:28:0x006c, B:32:0x0072, B:34:0x007a, B:35:0x007f, B:37:0x0082, B:39:0x008e, B:40:0x0093, B:42:0x0096, B:44:0x009e, B:45:0x00a3, B:47:0x00a6, B:49:0x00b4, B:50:0x00c6, B:52:0x00d4, B:53:0x00e6, B:55:0x00f4, B:56:0x0106, B:58:0x0114, B:59:0x0126, B:61:0x0134, B:62:0x0142, B:64:0x0150, B:65:0x0152, B:67:0x0156, B:69:0x015a, B:71:0x0162, B:74:0x016a, B:78:0x01a0, B:84:0x01ac, B:153:0x02ee, B:154:0x02f3, B:156:0x02f6, B:158:0x0312, B:160:0x0316, B:162:0x0323, B:164:0x035d, B:195:0x0410, B:202:0x0443, B:203:0x045c, B:204:0x0476, B:206:0x047e, B:207:0x0490, B:208:0x04b5, B:211:0x04b8, B:213:0x04d8, B:214:0x04ed, B:196:0x0417, B:197:0x041e, B:198:0x0427, B:199:0x042e, B:200:0x0434, B:201:0x043d, B:163:0x035a, B:216:0x04ef, B:217:0x04f4, B:86:0x01b4, B:88:0x01b8, B:117:0x020c, B:118:0x0216, B:127:0x0269, B:129:0x026e, B:131:0x0273, B:134:0x027a, B:119:0x021a, B:120:0x0224, B:121:0x022b, B:122:0x0237, B:123:0x023f, B:124:0x0252, B:125:0x025f, B:135:0x028c, B:143:0x02c9, B:149:0x02d9, B:146:0x02cf, B:148:0x02d7, B:139:0x02bf, B:141:0x02c5, B:150:0x02de, B:151:0x02e5, B:219:0x04f6, B:220:0x04fb, B:222:0x04fd, B:223:0x0502), top: B:250:0x0063, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x02f6 A[Catch: all -> 0x006f, TryCatch #1 {all -> 0x006f, blocks: (B:25:0x0063, B:27:0x0067, B:28:0x006c, B:32:0x0072, B:34:0x007a, B:35:0x007f, B:37:0x0082, B:39:0x008e, B:40:0x0093, B:42:0x0096, B:44:0x009e, B:45:0x00a3, B:47:0x00a6, B:49:0x00b4, B:50:0x00c6, B:52:0x00d4, B:53:0x00e6, B:55:0x00f4, B:56:0x0106, B:58:0x0114, B:59:0x0126, B:61:0x0134, B:62:0x0142, B:64:0x0150, B:65:0x0152, B:67:0x0156, B:69:0x015a, B:71:0x0162, B:74:0x016a, B:78:0x01a0, B:84:0x01ac, B:153:0x02ee, B:154:0x02f3, B:156:0x02f6, B:158:0x0312, B:160:0x0316, B:162:0x0323, B:164:0x035d, B:195:0x0410, B:202:0x0443, B:203:0x045c, B:204:0x0476, B:206:0x047e, B:207:0x0490, B:208:0x04b5, B:211:0x04b8, B:213:0x04d8, B:214:0x04ed, B:196:0x0417, B:197:0x041e, B:198:0x0427, B:199:0x042e, B:200:0x0434, B:201:0x043d, B:163:0x035a, B:216:0x04ef, B:217:0x04f4, B:86:0x01b4, B:88:0x01b8, B:117:0x020c, B:118:0x0216, B:127:0x0269, B:129:0x026e, B:131:0x0273, B:134:0x027a, B:119:0x021a, B:120:0x0224, B:121:0x022b, B:122:0x0237, B:123:0x023f, B:124:0x0252, B:125:0x025f, B:135:0x028c, B:143:0x02c9, B:149:0x02d9, B:146:0x02cf, B:148:0x02d7, B:139:0x02bf, B:141:0x02c5, B:150:0x02de, B:151:0x02e5, B:219:0x04f6, B:220:0x04fb, B:222:0x04fd, B:223:0x0502), top: B:250:0x0063, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x03fa  */
    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int i8;
        int[] iArr;
        ViewParent parent;
        byte b8;
        int i9;
        byte b9;
        int i10;
        int i11;
        int i12;
        int i13;
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
        int iIntValue = ((Integer) f16214J.get((String) map.get("a"))).intValue();
        if (iIntValue != 5) {
            if (iIntValue != 7) {
                p083k3.b bVar = this.f16215G;
                if (!bVar.b()) {
                    bVar.a(null);
                    return;
                }
                if (iIntValue == 1) {
                    C0930Tb c0930Tb = this.f16216H;
                    synchronized (c0930Tb.f16669R) {
                        try {
                            if (c0930Tb.f16671T == null) {
                                c0930Tb.l("Not an activity context. Cannot resize.");
                                return;
                            }
                            if (c0930Tb.f16670S.l() == null) {
                                c0930Tb.l("Webview is not yet available, size is not set.");
                                return;
                            }
                            if (c0930Tb.f16670S.l().b()) {
                                c0930Tb.l("Is interstitial. Cannot resize an interstitial.");
                                return;
                            }
                            if (c0930Tb.f16670S.j0()) {
                                c0930Tb.l("Cannot resize an expanded banner.");
                                return;
                            }
                            if (!TextUtils.isEmpty((CharSequence) map.get("width"))) {
                                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                                c0930Tb.f16668Q = p113o3.O.k((String) map.get("width"));
                            }
                            if (!TextUtils.isEmpty((CharSequence) map.get("height"))) {
                                p113o3.O o7 = p083k3.l.f25980A.f25983c;
                                c0930Tb.f16665N = p113o3.O.k((String) map.get("height"));
                            }
                            if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
                                p113o3.O o8 = p083k3.l.f25980A.f25983c;
                                c0930Tb.f16666O = p113o3.O.k((String) map.get("offsetX"));
                            }
                            if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
                                p113o3.O o9 = p083k3.l.f25980A.f25983c;
                                c0930Tb.f16667P = p113o3.O.k((String) map.get("offsetY"));
                            }
                            if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
                                c0930Tb.f16662K = Boolean.parseBoolean((String) map.get("allowOffscreen"));
                            }
                            String str = (String) map.get("customClosePosition");
                            if (!TextUtils.isEmpty(str)) {
                                c0930Tb.f16661J = str;
                            }
                            if (c0930Tb.f16668Q < 0 || c0930Tb.f16665N < 0) {
                                c0930Tb.l("Invalid width and height options. Cannot resize.");
                                return;
                            }
                            Window window = c0930Tb.f16671T.getWindow();
                            if (window != null && window.getDecorView() != null) {
                                p113o3.O o10 = p083k3.l.f25980A.f25983c;
                                Activity activity = c0930Tb.f16671T;
                                int[] iArrM = p113o3.O.m(activity);
                                C3097p c3097p = C3097p.f26618f;
                                int[] iArr2 = {c3097p.f26619a.f(activity, iArrM[0]), c3097p.f26619a.f(activity, iArrM[1])};
                                int[] iArrN = p113o3.O.n(c0930Tb.f16671T);
                                int i14 = iArr2[0];
                                int i15 = iArr2[1];
                                int i16 = c0930Tb.f16668Q;
                                if (i16 < 50 || i16 > i14) {
                                    p120p3.h.g("Width is too small or too large.");
                                } else {
                                    int i17 = c0930Tb.f16665N;
                                    if (i17 < 50 || i17 > i15) {
                                        p120p3.h.g("Height is too small or too large.");
                                    } else {
                                        if (i17 != i15 || i16 != i14) {
                                            if (c0930Tb.f16662K) {
                                                switch (c0930Tb.f16661J) {
                                                    case "center":
                                                        b9 = 2;
                                                        break;
                                                    case "top-left":
                                                        b9 = 0;
                                                        break;
                                                    case "bottom-left":
                                                        b9 = 3;
                                                        break;
                                                    case "bottom-right":
                                                        b9 = 5;
                                                        break;
                                                    case "bottom-center":
                                                        b9 = 4;
                                                        break;
                                                    case "top-center":
                                                        b9 = 1;
                                                        break;
                                                    default:
                                                        b9 = -1;
                                                        break;
                                                }
                                                if (b9 == 0) {
                                                    i10 = c0930Tb.f16663L + c0930Tb.f16666O;
                                                    i11 = c0930Tb.f16664M;
                                                } else if (b9 != 1) {
                                                    if (b9 != 2) {
                                                        if (b9 == 3) {
                                                            i10 = c0930Tb.f16663L + c0930Tb.f16666O;
                                                            i13 = c0930Tb.f16664M;
                                                        } else if (b9 == 4) {
                                                            i10 = ((c0930Tb.f16663L + c0930Tb.f16666O) + (i16 >> 1)) - 25;
                                                            i13 = c0930Tb.f16664M;
                                                        } else if (b9 != 5) {
                                                            i10 = ((c0930Tb.f16663L + c0930Tb.f16666O) + i16) - 50;
                                                            i11 = c0930Tb.f16664M;
                                                        } else {
                                                            i10 = ((c0930Tb.f16663L + c0930Tb.f16666O) + i16) - 50;
                                                            i13 = c0930Tb.f16664M;
                                                        }
                                                        i12 = ((i13 + c0930Tb.f16667P) + i17) - 50;
                                                    } else {
                                                        i10 = ((c0930Tb.f16663L + c0930Tb.f16666O) + (i16 >> 1)) - 25;
                                                        i12 = ((c0930Tb.f16664M + c0930Tb.f16667P) + (i17 >> 1)) - 25;
                                                    }
                                                    if (i10 < 0 && i10 + 50 <= i14 && i12 >= iArrN[0] && i12 + 50 <= iArrN[1]) {
                                                        iArr = new int[]{c0930Tb.f16663L + c0930Tb.f16666O, c0930Tb.f16664M + c0930Tb.f16667P};
                                                    }
                                                } else {
                                                    i10 = ((c0930Tb.f16663L + c0930Tb.f16666O) + (i16 >> 1)) - 25;
                                                    i11 = c0930Tb.f16664M;
                                                }
                                                i12 = i11 + c0930Tb.f16667P;
                                                if (i10 < 0) {
                                                }
                                            } else {
                                                Activity activity2 = c0930Tb.f16671T;
                                                int[] iArrM2 = p113o3.O.m(activity2);
                                                int[] iArr3 = {c3097p.f26619a.f(activity2, iArrM2[0]), c3097p.f26619a.f(activity2, iArrM2[1])};
                                                int[] iArrN2 = p113o3.O.n(c0930Tb.f16671T);
                                                int i18 = iArr3[0];
                                                int i19 = c0930Tb.f16663L + c0930Tb.f16666O;
                                                int i20 = c0930Tb.f16664M + c0930Tb.f16667P;
                                                if (i19 < 0) {
                                                    i9 = 0;
                                                } else {
                                                    int i21 = c0930Tb.f16668Q;
                                                    i9 = i19 + i21 > i18 ? i18 - i21 : i19;
                                                }
                                                int i22 = iArrN2[0];
                                                if (i20 < i22) {
                                                    i20 = i22;
                                                } else {
                                                    int i23 = c0930Tb.f16665N;
                                                    int i24 = i20 + i23;
                                                    int i25 = iArrN2[1];
                                                    if (i24 > i25) {
                                                        i20 = i25 - i23;
                                                    }
                                                }
                                                iArr = new int[]{i9, i20};
                                            }
                                            if (iArr == null) {
                                                c0930Tb.l("Resize location out of screen or close button is not visible.");
                                                return;
                                            }
                                            p120p3.d dVar = c3097p.f26619a;
                                            int iO = p120p3.d.o(c0930Tb.f16671T, c0930Tb.f16668Q);
                                            int iO2 = p120p3.d.o(c0930Tb.f16671T, c0930Tb.f16665N);
                                            parent = ((View) c0930Tb.f16670S).getParent();
                                            if (parent != null || !(parent instanceof ViewGroup)) {
                                                c0930Tb.l("Webview is detached, probably in the middle of a resize or expand.");
                                                return;
                                            }
                                            ViewGroup viewGroup = (ViewGroup) parent;
                                            viewGroup.removeView((View) c0930Tb.f16670S);
                                            PopupWindow popupWindow = c0930Tb.f16676Y;
                                            if (popupWindow == null) {
                                                c0930Tb.f16678a0 = viewGroup;
                                                Object obj2 = c0930Tb.f16670S;
                                                ((View) obj2).setDrawingCacheEnabled(true);
                                                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((View) obj2).getDrawingCache());
                                                ((View) obj2).setDrawingCacheEnabled(false);
                                                ImageView imageView = new ImageView(c0930Tb.f16671T);
                                                c0930Tb.f16673V = imageView;
                                                imageView.setImageBitmap(bitmapCreateBitmap);
                                                c0930Tb.f16672U = c0930Tb.f16670S.l();
                                                c0930Tb.f16678a0.addView(c0930Tb.f16673V);
                                            } else {
                                                popupWindow.dismiss();
                                            }
                                            RelativeLayout relativeLayout = new RelativeLayout(c0930Tb.f16671T);
                                            c0930Tb.f16677Z = relativeLayout;
                                            relativeLayout.setBackgroundColor(0);
                                            c0930Tb.f16677Z.setLayoutParams(new ViewGroup.LayoutParams(iO, iO2));
                                            PopupWindow popupWindow2 = new PopupWindow((View) c0930Tb.f16677Z, iO, iO2, false);
                                            c0930Tb.f16676Y = popupWindow2;
                                            popupWindow2.setOutsideTouchable(false);
                                            c0930Tb.f16676Y.setTouchable(true);
                                            c0930Tb.f16676Y.setClippingEnabled(!c0930Tb.f16662K);
                                            c0930Tb.f16677Z.addView((View) c0930Tb.f16670S, -1, -1);
                                            c0930Tb.f16674W = new LinearLayout(c0930Tb.f16671T);
                                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(p120p3.d.o(c0930Tb.f16671T, 50), p120p3.d.o(c0930Tb.f16671T, 50));
                                            switch (c0930Tb.f16661J) {
                                                case "center":
                                                    b8 = 2;
                                                    break;
                                                case "top-left":
                                                    b8 = 0;
                                                    break;
                                                case "bottom-left":
                                                    b8 = 3;
                                                    break;
                                                case "bottom-right":
                                                    b8 = 5;
                                                    break;
                                                case "bottom-center":
                                                    b8 = 4;
                                                    break;
                                                case "top-center":
                                                    b8 = 1;
                                                    break;
                                                default:
                                                    b8 = -1;
                                                    break;
                                            }
                                            if (b8 == 0) {
                                                layoutParams.addRule(10);
                                                layoutParams.addRule(9);
                                            } else if (b8 == 1) {
                                                layoutParams.addRule(10);
                                                layoutParams.addRule(14);
                                            } else if (b8 == 2) {
                                                layoutParams.addRule(13);
                                            } else if (b8 == 3) {
                                                layoutParams.addRule(12);
                                                layoutParams.addRule(9);
                                            } else if (b8 == 4) {
                                                layoutParams.addRule(12);
                                                layoutParams.addRule(14);
                                            } else if (b8 != 5) {
                                                layoutParams.addRule(10);
                                                layoutParams.addRule(11);
                                            } else {
                                                layoutParams.addRule(12);
                                                layoutParams.addRule(11);
                                            }
                                            c0930Tb.f16674W.setOnClickListener(new ViewOnClickListenerC0916Sb(c0930Tb, 0));
                                            c0930Tb.f16674W.setContentDescription("Close button");
                                            c0930Tb.f16677Z.addView(c0930Tb.f16674W, layoutParams);
                                            try {
                                                c0930Tb.f16676Y.showAtLocation(window.getDecorView(), 0, p120p3.d.o(c0930Tb.f16671T, iArr[0]), p120p3.d.o(c0930Tb.f16671T, iArr[1]));
                                                int i26 = iArr[0];
                                                int i27 = iArr[1];
                                                C0864Of c0864Of = c0930Tb.f16675X;
                                                if (c0864Of != null) {
                                                    C0734Fj c0734Fj = ((C1376gn) c0864Of.f15180H).f18979c;
                                                    c0734Fj.getClass();
                                                    c0734Fj.Z0(new F2.G(2));
                                                }
                                                c0930Tb.f16670S.n0(new A2.i(1, iO, iO2, 5));
                                                c0930Tb.n(iArr[0], iArr[1] - p113o3.O.n(c0930Tb.f16671T)[0], c0930Tb.f16668Q, c0930Tb.f16665N);
                                                c0930Tb.o("resized");
                                                return;
                                            } catch (RuntimeException e8) {
                                                c0930Tb.l("Cannot show popup window: " + e8.getMessage());
                                                c0930Tb.f16677Z.removeView((View) c0930Tb.f16670S);
                                                ViewGroup viewGroup2 = c0930Tb.f16678a0;
                                                if (viewGroup2 != null) {
                                                    viewGroup2.removeView(c0930Tb.f16673V);
                                                    c0930Tb.f16678a0.addView((View) c0930Tb.f16670S);
                                                    c0930Tb.f16670S.n0(c0930Tb.f16672U);
                                                }
                                                return;
                                            }
                                        }
                                        p120p3.h.g("Cannot resize to a full-screen ad.");
                                    }
                                }
                                iArr = null;
                                if (iArr == null) {
                                    c0930Tb.l("Resize location out of screen or close button is not visible.");
                                    return;
                                }
                                p120p3.d dVar2 = c3097p.f26619a;
                                int iO3 = p120p3.d.o(c0930Tb.f16671T, c0930Tb.f16668Q);
                                int iO4 = p120p3.d.o(c0930Tb.f16671T, c0930Tb.f16665N);
                                parent = ((View) c0930Tb.f16670S).getParent();
                                if (parent != null) {
                                }
                                c0930Tb.l("Webview is detached, probably in the middle of a resize or expand.");
                                return;
                            }
                            c0930Tb.l("Activity context is not ready, cannot get window or decor view.");
                            return;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                if (iIntValue == 3) {
                    new C0972Wb(interfaceC0715Ef, map).zzb();
                    return;
                }
                if (iIntValue == 4) {
                    new C0902Rb(interfaceC0715Ef, map).zzc();
                    return;
                } else if (iIntValue != 5) {
                    if (iIntValue == 6) {
                        this.f16216H.q(true);
                        return;
                    } else if (iIntValue != 7) {
                        p120p3.h.f("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.f16217I.zzc();
            return;
        }
        String str2 = (String) map.get("forceOrientation");
        boolean z7 = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (interfaceC0715Ef == null) {
            p120p3.h.g("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str2)) {
            i8 = 7;
        } else if ("landscape".equalsIgnoreCase(str2)) {
            i8 = 6;
        } else {
            i8 = z7 ? -1 : 14;
        }
        interfaceC0715Ef.Z(i8);
    }
}
