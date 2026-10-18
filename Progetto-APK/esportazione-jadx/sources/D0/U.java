package D0;

import B0.C0041c;
import B0.M0;
import B0.RunnableC0052h0;
import C0.InterfaceC0076a;
import C2.InterfaceC0089e;
import U0.C0345k;
import U0.C0352s;
import U0.RunnableC0351q;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.webkit.WebView;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Service;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.videolan.libvlc.media.MediaPlayer;
import p086l.RunnableC3036k;
import p086l.s1;
import p094m0.C3126i;
import p094m0.g0;
import p094m0.o0;
import p094m0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class U implements InterfaceC0128s, O0.V, K0.m, Q0.e, U0.O, M1.c, X1.y, WebMessageListenerBoundaryInterface, p019c2.p, Q2.a, InterfaceC0089e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1867G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f1868H;

    public U(int i8) {
        Handler handler;
        Handler handlerB;
        this.f1867G = i8;
        int i9 = 3;
        if (i8 == 5) {
            this.f1868H = new F2.G(i9);
            return;
        }
        if (i8 == 6) {
            this.f1868H = new CopyOnWriteArrayList();
            return;
        }
        if (i8 != 7) {
            if (i8 != 22) {
                this.f1868H = new SparseArray();
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (Build.VERSION.SDK_INT >= 28) {
                handlerB = p093m.d.b(mainLooper);
            } else {
                try {
                    handler = (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(mainLooper, null, Boolean.TRUE);
                } catch (IllegalAccessException e8) {
                    e = e8;
                    Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                    handler = new Handler(mainLooper);
                } catch (InstantiationException e9) {
                    e = e9;
                    Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                    handler = new Handler(mainLooper);
                } catch (NoSuchMethodException e10) {
                    e = e10;
                    Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                    handler = new Handler(mainLooper);
                } catch (InvocationTargetException e11) {
                    Throwable cause = e11.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (!(cause instanceof Error)) {
                        throw new RuntimeException(cause);
                    }
                    throw ((Error) cause);
                }
                handlerB = handler;
            }
            this.f1868H = handlerB;
        }
    }

    @Override // C2.InterfaceC0089e
    public final Object A(byte[] bArr) {
        return ByteBuffer.wrap(bArr);
    }

    @Override // X1.y
    public final void B(View view) {
        ((ViewGroupOverlay) this.f1868H).remove(view);
    }

    @Override // D0.InterfaceC0128s
    public final void C() {
        B0.S s7 = ((V) this.f1868H).f4415V;
        if (s7 != null) {
            s7.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x029a  */
    public final void D(int i8, int i9, W0.t tVar) throws p094m0.P {
        p095m1.c cVar;
        p095m1.c cVar2;
        long j8;
        int i10;
        int i11;
        int i12;
        int i13;
        p095m1.d dVar = (p095m1.d) this.f1868H;
        SparseArray sparseArray = dVar.f27174c;
        int i14 = 4;
        int i15 = 1;
        int i16 = 0;
        if (i8 != 161 && i8 != 163) {
            if (i8 == 165) {
                if (dVar.f27153J != 2) {
                    return;
                }
                p095m1.c cVar3 = (p095m1.c) sparseArray.get(dVar.f27159P);
                if (dVar.f27162S != 4 || !"V_VP9".equals(cVar3.f27114c)) {
                    tVar.n(i9);
                    return;
                }
                p117p0.E e8 = dVar.f27190p;
                e8.I(i9);
                tVar.readFully(e8.f28035a, 0, i9);
                return;
            }
            if (i8 == 16877) {
                dVar.c(i8);
                p095m1.c cVar4 = dVar.f27198x;
                int i17 = cVar4.f27119h;
                if (i17 != 1685485123 && i17 != 1685480259) {
                    tVar.n(i9);
                    return;
                }
                byte[] bArr = new byte[i9];
                cVar4.f27100P = bArr;
                tVar.readFully(bArr, 0, i9);
                return;
            }
            if (i8 == 16981) {
                dVar.c(i8);
                p095m1.c cVar5 = dVar.f27198x;
                byte[] bArr2 = new byte[i9];
                cVar5.f27121j = bArr2;
                tVar.readFully(bArr2, 0, i9);
                return;
            }
            if (i8 == 18402) {
                byte[] bArr3 = new byte[i9];
                tVar.readFully(bArr3, 0, i9);
                dVar.c(i8);
                dVar.f27198x.f27122k = new W0.K(1, bArr3, 0, 0);
                return;
            }
            if (i8 == 21419) {
                p117p0.E e9 = dVar.f27185k;
                Arrays.fill(e9.f28035a, (byte) 0);
                tVar.readFully(e9.f28035a, 4 - i9, i9);
                e9.L(0);
                dVar.f27200z = (int) e9.B();
                return;
            }
            if (i8 == 25506) {
                dVar.c(i8);
                p095m1.c cVar6 = dVar.f27198x;
                byte[] bArr4 = new byte[i9];
                cVar6.f27123l = bArr4;
                tVar.readFully(bArr4, 0, i9);
                return;
            }
            if (i8 != 30322) {
                throw p094m0.P.a("Unexpected id: " + i8, null);
            }
            dVar.c(i8);
            p095m1.c cVar7 = dVar.f27198x;
            byte[] bArr5 = new byte[i9];
            cVar7.f27135x = bArr5;
            tVar.readFully(bArr5, 0, i9);
            return;
        }
        int i18 = dVar.f27153J;
        p117p0.E e10 = dVar.f27183i;
        if (i18 == 0) {
            p095m1.e eVar = dVar.f27172b;
            dVar.f27159P = (int) eVar.c(tVar, false, true, 8);
            dVar.f27160Q = eVar.f27204c;
            dVar.f27155L = -9223372036854775807L;
            dVar.f27153J = 1;
            e10.I(0);
        }
        p095m1.c cVar8 = (p095m1.c) sparseArray.get(dVar.f27159P);
        if (cVar8 == null) {
            tVar.n(i9 - dVar.f27160Q);
            dVar.f27153J = 0;
            return;
        }
        cVar8.f27110Z.getClass();
        if (dVar.f27153J == 1) {
            dVar.k(tVar, 3);
            int i19 = (e10.f28035a[2] & 6) >> 1;
            byte b8 = 255;
            if (i19 == 0) {
                dVar.f27157N = 1;
                int[] iArr = dVar.f27158O;
                if (iArr == null) {
                    iArr = new int[1];
                } else if (iArr.length < 1) {
                    iArr = new int[Math.max(iArr.length * 2, 1)];
                }
                dVar.f27158O = iArr;
                iArr[0] = (i9 - dVar.f27160Q) - 3;
            } else {
                dVar.k(tVar, 4);
                int i20 = (e10.f28035a[3] & 255) + 1;
                dVar.f27157N = i20;
                int[] iArr2 = dVar.f27158O;
                if (iArr2 == null) {
                    iArr2 = new int[i20];
                } else if (iArr2.length < i20) {
                    iArr2 = new int[Math.max(iArr2.length * 2, i20)];
                }
                dVar.f27158O = iArr2;
                if (i19 == 2) {
                    int i21 = (i9 - dVar.f27160Q) - 4;
                    int i22 = dVar.f27157N;
                    Arrays.fill(iArr2, 0, i22, i21 / i22);
                } else {
                    if (i19 == 1) {
                        int i23 = 0;
                        int i24 = 0;
                        while (true) {
                            i10 = dVar.f27157N - 1;
                            if (i23 >= i10) {
                                break;
                            }
                            dVar.f27158O[i23] = 0;
                            while (true) {
                                i11 = i14 + 1;
                                dVar.k(tVar, i11);
                                int i25 = e10.f28035a[i14] & 255;
                                int[] iArr3 = dVar.f27158O;
                                i12 = iArr3[i23] + i25;
                                iArr3[i23] = i12;
                                if (i25 != 255) {
                                    break;
                                } else {
                                    i14 = i11;
                                }
                            }
                            i24 += i12;
                            i23++;
                            i14 = i11;
                        }
                        dVar.f27158O[i10] = ((i9 - dVar.f27160Q) - i14) - i24;
                    } else {
                        if (i19 != 3) {
                            throw p094m0.P.a("Unexpected lacing value: " + i19, null);
                        }
                        int i26 = 0;
                        int i27 = 0;
                        while (true) {
                            int i28 = dVar.f27157N - i15;
                            if (i26 >= i28) {
                                cVar2 = cVar8;
                                dVar.f27158O[i28] = ((i9 - dVar.f27160Q) - i14) - i27;
                                break;
                            }
                            dVar.f27158O[i26] = i16;
                            int i29 = i14 + 1;
                            dVar.k(tVar, i29);
                            if (e10.f28035a[i14] == 0) {
                                throw p094m0.P.a("No valid varint length mask found", null);
                            }
                            int i30 = 0;
                            while (true) {
                                if (i30 >= 8) {
                                    j8 = 0;
                                    i14 = i29;
                                    break;
                                }
                                int i31 = i15 << (7 - i30);
                                if ((e10.f28035a[i14] & i31) != 0) {
                                    int i32 = i29 + i30;
                                    dVar.k(tVar, i32);
                                    j8 = e10.f28035a[i14] & b8 & (~i31);
                                    while (i29 < i32) {
                                        j8 = (j8 << 8) | ((long) (e10.f28035a[i29] & 255));
                                        i29++;
                                        i32 = i32;
                                    }
                                    int i33 = i32;
                                    if (i26 > 0) {
                                        j8 -= (1 << ((i30 * 7) + 6)) - 1;
                                    }
                                    i14 = i33;
                                    break;
                                }
                                i30++;
                                b8 = 255;
                                i15 = 1;
                            }
                            if (j8 < -2147483648L || j8 > 2147483647L) {
                                throw p094m0.P.a("EBML lacing sample size out of range.", null);
                            }
                            int i34 = (int) j8;
                            int[] iArr4 = dVar.f27158O;
                            if (i26 != 0) {
                                i34 += iArr4[i26 - 1];
                            }
                            iArr4[i26] = i34;
                            i27 += i34;
                            i26++;
                            cVar8 = cVar8;
                            b8 = 255;
                            i15 = 1;
                            i16 = 0;
                        }
                    }
                    byte[] bArr6 = e10.f28035a;
                    dVar.f27154K = dVar.m((bArr6[1] & 255) | (bArr6[0] << 8)) + dVar.f27148E;
                    cVar = cVar2;
                    if (cVar.f27116e != 2 || (i8 == 163 && (e10.f28035a[2] & 128) == 128)) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    dVar.f27161R = i13;
                    dVar.f27153J = 2;
                    dVar.f27156M = 0;
                }
            }
            cVar2 = cVar8;
            byte[] bArr7 = e10.f28035a;
            dVar.f27154K = dVar.m((bArr7[1] & 255) | (bArr7[0] << 8)) + dVar.f27148E;
            cVar = cVar2;
            if (cVar.f27116e != 2) {
                i13 = 1;
            } else {
                i13 = 1;
            }
            dVar.f27161R = i13;
            dVar.f27153J = 2;
            dVar.f27156M = 0;
        } else {
            cVar = cVar8;
        }
        if (i8 == 163) {
            while (true) {
                int i35 = dVar.f27156M;
                if (i35 >= dVar.f27157N) {
                    dVar.f27153J = 0;
                    return;
                }
                dVar.e(cVar, ((long) ((dVar.f27156M * cVar.f27117f) / 1000)) + dVar.f27154K, dVar.f27161R, dVar.n(tVar, cVar, dVar.f27158O[i35], false), 0);
                dVar.f27156M++;
                cVar = cVar;
            }
        } else {
            p095m1.c cVar9 = cVar;
            while (true) {
                int i36 = dVar.f27156M;
                if (i36 >= dVar.f27157N) {
                    return;
                }
                int[] iArr5 = dVar.f27158O;
                iArr5[i36] = dVar.n(tVar, cVar9, iArr5[i36], true);
                dVar.f27156M++;
            }
        }
    }

    public final void E(int i8, double d6) {
        p095m1.d dVar = (p095m1.d) this.f1868H;
        if (i8 == 181) {
            dVar.c(i8);
            dVar.f27198x.f27103S = (int) d6;
        }
        if (i8 == 17545) {
            dVar.f27195u = (long) d6;
            return;
        }
        switch (i8) {
            case 21969:
                dVar.c(i8);
                dVar.f27198x.f27090F = (float) d6;
                break;
            case 21970:
                dVar.c(i8);
                dVar.f27198x.f27091G = (float) d6;
                break;
            case 21971:
                dVar.c(i8);
                dVar.f27198x.f27092H = (float) d6;
                break;
            case 21972:
                dVar.c(i8);
                dVar.f27198x.f27093I = (float) d6;
                break;
            case 21973:
                dVar.c(i8);
                dVar.f27198x.f27094J = (float) d6;
                break;
            case 21974:
                dVar.c(i8);
                dVar.f27198x.f27095K = (float) d6;
                break;
            case 21975:
                dVar.c(i8);
                dVar.f27198x.f27096L = (float) d6;
                break;
            case 21976:
                dVar.c(i8);
                dVar.f27198x.f27097M = (float) d6;
                break;
            case 21977:
                dVar.c(i8);
                dVar.f27198x.f27098N = (float) d6;
                break;
            case 21978:
                dVar.c(i8);
                dVar.f27198x.f27099O = (float) d6;
                break;
            default:
                switch (i8) {
                    case 30323:
                        dVar.c(i8);
                        dVar.f27198x.f27132u = (float) d6;
                        break;
                    case 30324:
                        dVar.c(i8);
                        dVar.f27198x.f27133v = (float) d6;
                        break;
                    case 30325:
                        dVar.c(i8);
                        dVar.f27198x.f27134w = (float) d6;
                        break;
                    default:
                        dVar.getClass();
                        break;
                }
                break;
        }
    }

    @Override // U0.O
    public final void F() {
        switch (this.f1867G) {
            case 8:
                B0.S s7 = ((C0345k) this.f1868H).f4415V;
                if (s7 != null) {
                    s7.a();
                }
                break;
        }
    }

    public final int G(int i8) {
        ((p095m1.d) this.f1868H).getClass();
        switch (i8) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21938:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    public final void H(int i8, long j8) throws p094m0.P {
        p095m1.d dVar = (p095m1.d) this.f1868H;
        dVar.getClass();
        if (i8 == 20529) {
            if (j8 == 0) {
                return;
            }
            throw p094m0.P.a("ContentEncodingOrder " + j8 + " not supported", null);
        }
        if (i8 == 20530) {
            if (j8 == 1) {
                return;
            }
            throw p094m0.P.a("ContentEncodingScope " + j8 + " not supported", null);
        }
        switch (i8) {
            case 131:
                dVar.c(i8);
                dVar.f27198x.f27116e = (int) j8;
                return;
            case 136:
                dVar.c(i8);
                dVar.f27198x.f27108X = j8 == 1;
                return;
            case 155:
                dVar.f27155L = dVar.m(j8);
                return;
            case 159:
                dVar.c(i8);
                dVar.f27198x.f27101Q = (int) j8;
                return;
            case 176:
                dVar.c(i8);
                dVar.f27198x.f27125n = (int) j8;
                return;
            case 179:
                dVar.a(i8);
                dVar.f27149F.a(dVar.m(j8));
                return;
            case 186:
                dVar.c(i8);
                dVar.f27198x.f27126o = (int) j8;
                return;
            case 215:
                dVar.c(i8);
                dVar.f27198x.f27115d = (int) j8;
                return;
            case 231:
                dVar.f27148E = dVar.m(j8);
                return;
            case 238:
                dVar.f27162S = (int) j8;
                return;
            case 241:
                if (dVar.f27151H) {
                    return;
                }
                dVar.a(i8);
                dVar.f27150G.a(j8);
                dVar.f27151H = true;
                return;
            case 251:
                dVar.f27163T = true;
                return;
            case 16871:
                dVar.c(i8);
                dVar.f27198x.f27119h = (int) j8;
                return;
            case 16980:
                if (j8 == 3) {
                    return;
                }
                throw p094m0.P.a("ContentCompAlgo " + j8 + " not supported", null);
            case 17029:
                if (j8 < 1 || j8 > 2) {
                    throw p094m0.P.a("DocTypeReadVersion " + j8 + " not supported", null);
                }
                return;
            case 17143:
                if (j8 == 1) {
                    return;
                }
                throw p094m0.P.a("EBMLReadVersion " + j8 + " not supported", null);
            case 18401:
                if (j8 == 5) {
                    return;
                }
                throw p094m0.P.a("ContentEncAlgo " + j8 + " not supported", null);
            case 18408:
                if (j8 == 1) {
                    return;
                }
                throw p094m0.P.a("AESSettingsCipherMode " + j8 + " not supported", null);
            case 21420:
                dVar.f27144A = j8 + dVar.f27193s;
                return;
            case 21432:
                int i9 = (int) j8;
                dVar.c(i8);
                if (i9 == 0) {
                    dVar.f27198x.f27136y = 0;
                    return;
                }
                if (i9 == 1) {
                    dVar.f27198x.f27136y = 2;
                    return;
                } else if (i9 == 3) {
                    dVar.f27198x.f27136y = 1;
                    return;
                } else {
                    if (i9 != 15) {
                        return;
                    }
                    dVar.f27198x.f27136y = 3;
                    return;
                }
            case 21680:
                dVar.c(i8);
                dVar.f27198x.f27128q = (int) j8;
                return;
            case 21682:
                dVar.c(i8);
                dVar.f27198x.f27130s = (int) j8;
                return;
            case 21690:
                dVar.c(i8);
                dVar.f27198x.f27129r = (int) j8;
                return;
            case 21930:
                dVar.c(i8);
                dVar.f27198x.f27107W = j8 == 1;
                return;
            case 21938:
                dVar.c(i8);
                p095m1.c cVar = dVar.f27198x;
                cVar.f27137z = true;
                cVar.f27127p = (int) j8;
                return;
            case 21998:
                dVar.c(i8);
                dVar.f27198x.f27118g = (int) j8;
                return;
            case 22186:
                dVar.c(i8);
                dVar.f27198x.f27104T = j8;
                return;
            case 22203:
                dVar.c(i8);
                dVar.f27198x.f27105U = j8;
                return;
            case 25188:
                dVar.c(i8);
                dVar.f27198x.f27102R = (int) j8;
                return;
            case 30114:
                dVar.f27164U = j8;
                return;
            case 30321:
                dVar.c(i8);
                int i10 = (int) j8;
                if (i10 == 0) {
                    dVar.f27198x.f27131t = 0;
                    return;
                }
                if (i10 == 1) {
                    dVar.f27198x.f27131t = 1;
                    return;
                } else if (i10 == 2) {
                    dVar.f27198x.f27131t = 2;
                    return;
                } else {
                    if (i10 != 3) {
                        return;
                    }
                    dVar.f27198x.f27131t = 3;
                    return;
                }
            case 2352003:
                dVar.c(i8);
                dVar.f27198x.f27117f = (int) j8;
                return;
            case 2807729:
                dVar.f27194t = j8;
                return;
            default:
                switch (i8) {
                    case 21945:
                        dVar.c(i8);
                        int i11 = (int) j8;
                        if (i11 == 1) {
                            dVar.f27198x.f27087C = 2;
                            return;
                        } else {
                            if (i11 != 2) {
                                return;
                            }
                            dVar.f27198x.f27087C = 1;
                            return;
                        }
                    case 21946:
                        dVar.c(i8);
                        int i12 = C3126i.i((int) j8);
                        if (i12 != -1) {
                            dVar.f27198x.f27086B = i12;
                            return;
                        }
                        return;
                    case 21947:
                        dVar.c(i8);
                        dVar.f27198x.f27137z = true;
                        int iH = C3126i.h((int) j8);
                        if (iH != -1) {
                            dVar.f27198x.f27085A = iH;
                            return;
                        }
                        return;
                    case 21948:
                        dVar.c(i8);
                        dVar.f27198x.f27088D = (int) j8;
                        return;
                    case 21949:
                        dVar.c(i8);
                        dVar.f27198x.f27089E = (int) j8;
                        return;
                    default:
                        return;
                }
        }
    }

    public final void I() {
        Object obj = this.f1868H;
        H0.n nVar = (H0.n) obj;
        int i8 = nVar.f3523Z - 1;
        nVar.f3523Z = i8;
        if (i8 > 0) {
            return;
        }
        int i9 = 0;
        for (H0.t tVar : ((H0.n) obj).f3525b0) {
            tVar.f();
            i9 += tVar.f3597o0.f5182a;
        }
        g0[] g0VarArr = new g0[i9];
        int i10 = 0;
        for (H0.t tVar2 : ((H0.n) this.f1868H).f3525b0) {
            tVar2.f();
            int i11 = tVar2.f3597o0.f5182a;
            int i12 = 0;
            while (i12 < i11) {
                tVar2.f();
                g0VarArr[i10] = tVar2.f3597o0.a(i12);
                i12++;
                i10++;
            }
        }
        ((H0.n) this.f1868H).f3524a0 = new O0.Z(g0VarArr);
        Object obj2 = this.f1868H;
        ((H0.n) obj2).f3522Y.t((H0.n) obj2);
    }

    public final void J(p135r2.k kVar, C0041c c0041c, RunnableC3036k runnableC3036k) {
        synchronized (kVar.f29817K) {
            kVar.f29822P = true;
        }
        kVar.a("post-response");
        ((Executor) this.f1868H).execute(new K.a(kVar, c0041c, runnableC3036k, 7, 0));
    }

    public final void K(InterfaceC0076a interfaceC0076a) {
        for (S0.b bVar : (CopyOnWriteArrayList) this.f1868H) {
            if (bVar.f6320b == interfaceC0076a) {
                bVar.f6321c = true;
                ((CopyOnWriteArrayList) this.f1868H).remove(bVar);
            }
        }
    }

    public final void L(int i8, long j8, long j9) throws p094m0.P {
        p095m1.d dVar = (p095m1.d) this.f1868H;
        H1.j(dVar.f27179e0);
        if (i8 == 160) {
            dVar.f27163T = false;
            dVar.f27164U = 0L;
            return;
        }
        if (i8 != 174) {
            if (i8 == 187) {
                dVar.f27151H = false;
                return;
            }
            if (i8 == 19899) {
                dVar.f27200z = -1;
                dVar.f27144A = -1L;
                return;
            }
            if (i8 == 20533) {
                dVar.c(i8);
                dVar.f27198x.f27120i = true;
                return;
            }
            if (i8 == 21968) {
                dVar.c(i8);
                dVar.f27198x.f27137z = true;
                return;
            }
            if (i8 == 408125543) {
                long j10 = dVar.f27193s;
                if (j10 != -1 && j10 != j8) {
                    throw p094m0.P.a("Multiple Segment elements not supported", null);
                }
                dVar.f27193s = j8;
                dVar.f27192r = j9;
                return;
            }
            if (i8 == 475249515) {
                dVar.f27149F = new p117p0.y();
                dVar.f27150G = new p117p0.y();
                return;
            } else {
                if (i8 == 524531317 && !dVar.f27199y) {
                    if (dVar.f27176d && dVar.f27146C != -1) {
                        dVar.f27145B = true;
                        return;
                    } else {
                        dVar.f27179e0.r(new W0.x(dVar.f27196v));
                        dVar.f27199y = true;
                        return;
                    }
                }
                return;
            }
        }
        p095m1.c cVar = new p095m1.c();
        cVar.f27125n = -1;
        cVar.f27126o = -1;
        cVar.f27127p = -1;
        cVar.f27128q = -1;
        cVar.f27129r = -1;
        cVar.f27130s = 0;
        cVar.f27131t = -1;
        cVar.f27132u = 0.0f;
        cVar.f27133v = 0.0f;
        cVar.f27134w = 0.0f;
        cVar.f27135x = null;
        cVar.f27136y = -1;
        cVar.f27137z = false;
        cVar.f27085A = -1;
        cVar.f27086B = -1;
        cVar.f27087C = -1;
        cVar.f27088D = 1000;
        cVar.f27089E = MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
        cVar.f27090F = -1.0f;
        cVar.f27091G = -1.0f;
        cVar.f27092H = -1.0f;
        cVar.f27093I = -1.0f;
        cVar.f27094J = -1.0f;
        cVar.f27095K = -1.0f;
        cVar.f27096L = -1.0f;
        cVar.f27097M = -1.0f;
        cVar.f27098N = -1.0f;
        cVar.f27099O = -1.0f;
        cVar.f27101Q = 1;
        cVar.f27102R = -1;
        cVar.f27103S = 8000;
        cVar.f27104T = 0L;
        cVar.f27105U = 0L;
        cVar.f27108X = true;
        cVar.f27109Y = "eng";
        dVar.f27198x = cVar;
        cVar.f27111a = dVar.f27197w;
    }

    public final void M(int i8, String str) throws p094m0.P {
        p095m1.d dVar = (p095m1.d) this.f1868H;
        dVar.getClass();
        if (i8 == 134) {
            dVar.c(i8);
            dVar.f27198x.f27114c = str;
            return;
        }
        if (i8 == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                dVar.f27197w = str.equals("webm");
                return;
            }
            throw p094m0.P.a("DocType " + str + " not supported", null);
        }
        if (i8 == 21358) {
            dVar.c(i8);
            dVar.f27198x.f27113b = str;
        } else {
            if (i8 != 2274716) {
                return;
            }
            dVar.c(i8);
            dVar.f27198x.f27109Y = str;
        }
    }

    public final void N(ArrayList arrayList) {
        p125q0.s sVar;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            if (((p125q0.r) arrayList.get(i8)).f29512a == 1) {
                try {
                    sVar = new p125q0.s((p125q0.r) arrayList.get(i8));
                } catch (p125q0.q unused) {
                    sVar = null;
                }
                this.f1868H = sVar;
            }
        }
    }

    @Override // C2.InterfaceC0089e
    public final Class a() {
        return ByteBuffer.class;
    }

    @Override // K0.m
    public final void b(int i8, p171w0.c cVar, long j8, int i9) {
        ((MediaCodec) this.f1868H).queueSecureInputBuffer(i8, 0, cVar.f30900i, j8, i9);
    }

    @Override // D0.InterfaceC0128s
    public final void c(int i8) {
        K0.i iVar;
        if (Build.VERSION.SDK_INT >= 35 && (iVar = ((V) this.f1868H).f1872Z0) != null) {
            iVar.d(i8);
        }
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new F.l(c0124n, i8, 3));
        }
    }

    @Override // p019c2.p
    public final WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) a7.b.b(WebViewProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f1868H).createWebView(webView));
    }

    @Override // K0.m
    public final void d(Bundle bundle) {
        ((MediaCodec) this.f1868H).setParameters(bundle);
    }

    @Override // K0.m
    public final void e(long j8, int i8, int i9, int i10) {
        ((MediaCodec) this.f1868H).queueInputBuffer(i8, 0, i9, j8, i10);
    }

    @Override // D0.InterfaceC0128s
    public final void f(boolean z7) {
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new M0(2, c0124n, z7));
        }
    }

    @Override // U0.O
    public final void g(w0 w0Var) {
        switch (this.f1867G) {
            case 8:
                break;
            default:
                Iterator it = ((U0.x) this.f1868H).f6863h.iterator();
                while (it.hasNext()) {
                    C0352s c0352s = (C0352s) ((U0.t) it.next());
                    c0352s.f6846O.execute(new U0.r(0, c0352s.f6845N, w0Var));
                }
                break;
        }
    }

    @Override // p019c2.p
    public final StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) a7.b.b(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f1868H).getStatics());
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_LISTENER", "WEB_MESSAGE_ARRAY_BUFFER"};
    }

    @Override // D0.InterfaceC0128s
    public final void h(long j8) {
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new A0.C(c0124n, 2, j8));
        }
    }

    @Override // U0.O
    public final void i(U0.Q q7) {
        switch (this.f1867G) {
            case 8:
                C0345k c0345k = (C0345k) this.f1868H;
                c0345k.f4398M0 = c0345k.createRendererException(q7, q7.f6690G, 7001);
                break;
            default:
                for (U0.t tVar : ((U0.x) this.f1868H).f6863h) {
                    o0 o0VarA = o0.a(q7);
                    C0352s c0352s = (C0352s) tVar;
                    c0352s.f6846O.execute(new RunnableC0052h0(c0352s, c0352s.f6845N, o0VarA, 4));
                }
                break;
        }
    }

    @Override // D0.InterfaceC0128s
    public final void j(C0126p c0126p) {
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0123m(c0124n, c0126p, 1));
        }
    }

    @Override // U0.O
    public final void k() {
        switch (this.f1867G) {
            case 8:
                C0345k c0345k = (C0345k) this.f1868H;
                Surface surface = c0345k.f6802p1;
                if (surface != null) {
                    c0345k.f6785Y0.v(surface);
                    c0345k.f6805s1 = true;
                }
                break;
            default:
                Iterator it = ((U0.x) this.f1868H).f6863h.iterator();
                while (it.hasNext()) {
                    C0352s c0352s = (C0352s) ((U0.t) it.next());
                    U0.O o4 = c0352s.f6845N;
                    Executor executor = c0352s.f6846O;
                    Objects.requireNonNull(o4);
                    executor.execute(new RunnableC0351q(o4, 2));
                }
                break;
        }
    }

    @Override // D0.InterfaceC0128s
    public final void l() {
        ((V) this.f1868H).f1881i1 = true;
    }

    @Override // Q2.a
    public final Object m() {
        switch (this.f1867G) {
            case 25:
                F.d dVar = (F.d) this.f1868H;
                return new y2.l((J3.k) dVar.f2962I, (M.c) dVar.f2963J);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                s1 s1Var = (s1) this.f1868H;
                return new y2.t((B2.c) s1Var.f26374a, (B2.c) s1Var.f26375b, (B2.c) s1Var.f26376c, (B2.c) s1Var.f26377d, (y2.u) s1Var.f26378e, (y2.w) s1Var.f26379f, (M.c) s1Var.f26380g);
            default:
                try {
                    return new A2.j(MessageDigest.getInstance("SHA-256"));
                } catch (NoSuchAlgorithmException e8) {
                    throw new RuntimeException(e8);
                }
        }
    }

    @Override // D0.InterfaceC0128s
    public final void n() {
        B0.S s7 = ((V) this.f1868H).f4415V;
        if (s7 != null) {
            s7.f824a.f900x0 = true;
        }
    }

    @Override // M1.c
    public final void o() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0061  */
    /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    public final void onPostMessage(WebView webView, InvocationHandler invocationHandler, Uri uri, boolean z7, InvocationHandler invocationHandler2) {
        p011b2.c cVar;
        p011b2.c cVar2;
        WebMessageBoundaryInterface webMessageBoundaryInterface = (WebMessageBoundaryInterface) a7.b.b(WebMessageBoundaryInterface.class, invocationHandler);
        InvocationHandler[] ports = webMessageBoundaryInterface.getPorts();
        U[] uArr = new U[ports.length];
        int i8 = 0;
        for (int i9 = 0; i9 < ports.length; i9++) {
            uArr[i9] = new U(ports[i9]);
        }
        if (p019c2.n.f10634a.b()) {
            WebMessagePayloadBoundaryInterface webMessagePayloadBoundaryInterface = (WebMessagePayloadBoundaryInterface) a7.b.b(WebMessagePayloadBoundaryInterface.class, webMessageBoundaryInterface.getMessagePayload());
            int type = webMessagePayloadBoundaryInterface.getType();
            if (type != 0) {
                if (type != 1) {
                    cVar2 = null;
                } else {
                    cVar = new p011b2.c(webMessagePayloadBoundaryInterface.getAsArrayBuffer());
                }
                if (cVar2 != null) {
                    JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) a7.b.b(JsReplyProxyBoundaryInterface.class, invocationHandler2);
                    ((p011b2.d) this.f1868H).onPostMessage(webView, cVar2, uri, z7, (p019c2.i) jsReplyProxyBoundaryInterface.getOrCreatePeer(new p019c2.h(jsReplyProxyBoundaryInterface, i8)));
                }
            }
            cVar = new p011b2.c(webMessagePayloadBoundaryInterface.getAsString());
        } else {
            cVar = new p011b2.c(webMessageBoundaryInterface.getData());
        }
        cVar2 = cVar;
        if (cVar2 != null) {
            JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface2 = (JsReplyProxyBoundaryInterface) a7.b.b(JsReplyProxyBoundaryInterface.class, invocationHandler2);
            ((p011b2.d) this.f1868H).onPostMessage(webView, cVar2, uri, z7, (p019c2.i) jsReplyProxyBoundaryInterface2.getOrCreatePeer(new p019c2.h(jsReplyProxyBoundaryInterface2, i8)));
        }
    }

    @Override // D0.InterfaceC0128s
    public final void p(C0126p c0126p) {
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0123m(c0124n, c0126p, 0));
        }
    }

    @Override // M1.c
    public final void q(int i8, Object obj) {
        String str;
        switch (i8) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = HttpUrl.FRAGMENT_ENCODE_SET;
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i8 == 6 || i8 == 7 || i8 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.f1868H).setResultCode(i8);
    }

    @Override // O0.V
    public final void r(O0.W w7) {
        H0.n nVar = (H0.n) this.f1868H;
        nVar.f3522Y.r(nVar);
    }

    @Override // D0.InterfaceC0128s
    public final void s(int i8, long j8, long j9) {
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0122l(c0124n, i8, j8, j9, 0));
        }
    }

    @Override // p019c2.p
    public final String[] u() {
        return ((WebViewProviderFactoryBoundaryInterface) this.f1868H).getSupportedFeatures();
    }

    @Override // D0.InterfaceC0128s
    public final void v() {
        ((V) this.f1868H).onRendererCapabilitiesChanged();
    }

    @Override // D0.InterfaceC0128s
    public final void w(Exception exc) {
        p117p0.x.d("MediaCodecAudioRenderer", "Audio sink error", exc);
        C0124n c0124n = ((V) this.f1868H).f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0120j(c0124n, exc, 1));
        }
    }

    @Override // D0.InterfaceC0128s
    public final void y() {
        ((V) this.f1868H).f1879g1 = true;
    }

    @Override // U0.O
    public final void z() {
        switch (this.f1867G) {
            case 8:
                C0345k c0345k = (C0345k) this.f1868H;
                if (c0345k.f6802p1 != null) {
                    c0345k.n0(0, 1);
                }
                break;
            default:
                Iterator it = ((U0.x) this.f1868H).f6863h.iterator();
                while (it.hasNext()) {
                    C0352s c0352s = (C0352s) ((U0.t) it.next());
                    U0.O o4 = c0352s.f6845N;
                    Executor executor = c0352s.f6846O;
                    Objects.requireNonNull(o4);
                    executor.execute(new RunnableC0351q(o4, 1));
                }
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(V v5) {
        this(v5, 0);
        this.f1867G = 0;
    }

    @Override // K0.m
    public final void flush() {
    }

    @Override // K0.m
    public final void shutdown() {
    }

    @Override // K0.m
    public final void start() {
    }

    @Override // K0.m
    public final void x() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(H0.n nVar) {
        this(nVar, 1);
        this.f1867G = 1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(K0.r rVar) {
        this(rVar, 3);
        this.f1867G = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(U0.x xVar) {
        this(xVar, 9);
        this.f1867G = 9;
    }

    public /* synthetic */ U(Object obj, int i8) {
        this.f1867G = i8;
        this.f1868H = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(p095m1.d dVar) {
        this(dVar, 11);
        this.f1867G = 11;
    }

    public U(Handler handler) {
        this.f1867G = 23;
        this.f1868H = new p135r2.e(handler);
    }

    public U(ViewGroup viewGroup) {
        this.f1867G = 16;
        this.f1868H = viewGroup.getOverlay();
    }

    public U(InvocationHandler invocationHandler) {
        this.f1867G = 19;
        this.f1868H = (WebMessagePortBoundaryInterface) a7.b.b(WebMessagePortBoundaryInterface.class, invocationHandler);
    }
}
