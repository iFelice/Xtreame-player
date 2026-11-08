package com.google.android.gms.internal.ads;

import D0.C0115e;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1774oM extends VM implements FK {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final JM f20261A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f20262B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f20263C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public boolean f20264D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public C1804p0 f20265E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public C1804p0 f20266F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public long f20267G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public boolean f20268H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public boolean f20269I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public boolean f20270J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public int f20271K0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final Context f20272x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final C1773oL f20273y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final TL f20274z0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1774oM(Context context, I7 i8, Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK, C1618lM c1618lM) {
        super(1, i8, 44100.0f);
        JM jm = Et.f13234a >= 35 ? new JM() : null;
        this.f20272x0 = context.getApplicationContext();
        this.f20274z0 = c1618lM;
        this.f20261A0 = jm;
        this.f20271K0 = -1000;
        this.f20273y0 = new C1773oL(handler, surfaceHolderCallbackC1979sK);
        c1618lM.f19771l = new C1722nM(this);
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void A(long j8, boolean z7) {
        super.A(j8, z7);
        ((C1618lM) this.f20274z0).m();
        this.f20267G0 = j8;
        this.f20270J0 = false;
        this.f20268H0 = true;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final float B(float f8, C1804p0[] c1804p0Arr) {
        int iMax = -1;
        for (C1804p0 c1804p0 : c1804p0Arr) {
            int i8 = c1804p0.f20363B;
            if (i8 != -1) {
                iMax = Math.max(iMax, i8);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f8;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0041  */
    /* JADX WARN: Code duplicated, block: B:79:0x0115  */
    /* JADX WARN: Code duplicated, block: B:92:0x015a  */
    @Override // com.google.android.gms.internal.ads.VM
    public final int T(WM wm, C1804p0 c1804p0) {
        int i8;
        PA paD;
        boolean z7;
        int i9;
        JL jlA;
        boolean zBooleanValue;
        AudioManager audioManager;
        int iN;
        if (!"audio".equals(AbstractC2140va.h(c1804p0.f20383m))) {
            return 128;
        }
        int i10 = 1;
        int i11 = c1804p0.f20369H;
        boolean z8 = i11 == 0;
        String str = c1804p0.f20383m;
        TL tl = this.f20274z0;
        int i12 = c1804p0.f20362A;
        int i13 = c1804p0.f20363B;
        if (z8) {
            if (i11 != 0) {
                List listC = AbstractC1154cN.c("audio/raw", false, false);
                if ((listC.isEmpty() ? null : (PM) listC.get(0)) == null) {
                    i8 = 0;
                }
            }
            C1618lM c1618lM = (C1618lM) tl;
            if (c1618lM.f19753S) {
                jlA = JL.f14140d;
            } else {
                C1097bH c1097bH = c1618lM.f19779t;
                C1050aM c1050aM = c1618lM.f19759Y;
                c1050aM.getClass();
                c1097bH.getClass();
                int i14 = Et.f13234a;
                if (i14 < 29 || i13 == -1) {
                    jlA = JL.f14140d;
                } else {
                    Boolean bool = c1050aM.f17886b;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    } else {
                        Context context = c1050aM.f17885a;
                        if (context == null || (audioManager = (AudioManager) context.getSystemService("audio")) == null) {
                            c1050aM.f17886b = Boolean.FALSE;
                        } else {
                            String parameters = audioManager.getParameters("offloadVariableRateSupported");
                            c1050aM.f17886b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
                        }
                        zBooleanValue = c1050aM.f17886b.booleanValue();
                    }
                    str.getClass();
                    int iA = AbstractC2140va.a(str, c1804p0.f20380j);
                    if (iA == 0 || i14 < Et.m(iA) || (iN = Et.n(i12)) == 0) {
                        jlA = JL.f14140d;
                    } else {
                        try {
                            AudioFormat audioFormatX = Et.x(i13, iN, iA);
                            jlA = i14 >= 31 ? ZL.a(audioFormatX, (AudioAttributes) c1097bH.a().f15180H, zBooleanValue) : YL.a(audioFormatX, (AudioAttributes) c1097bH.a().f15180H, zBooleanValue);
                        } catch (IllegalArgumentException unused) {
                            jlA = JL.f14140d;
                        }
                    }
                }
            }
            if (jlA.f14141a) {
                i8 = true != jlA.f14142b ? IMediaList.Event.ItemAdded : 1536;
                if (jlA.f14143c) {
                    i8 |= 2048;
                }
            } else {
                i8 = 0;
            }
            if (c1618lM.k(c1804p0) != 0) {
                return i8 | 172;
            }
        } else {
            i8 = 0;
        }
        if ("audio/raw".equals(str) && ((C1618lM) tl).k(c1804p0) == 0) {
            i9 = 128;
        } else {
            K k8 = new K();
            k8.f("audio/raw");
            k8.f14285z = i12;
            k8.f14253A = i13;
            k8.f14254B = 2;
            C1618lM c1618lM2 = (C1618lM) tl;
            if (c1618lM2.k(new C1804p0(k8)) == 0) {
                i9 = 128;
            } else {
                if (str == null) {
                    paD = PA.f15340K;
                } else if (c1618lM2.k(c1804p0) != 0) {
                    List listC2 = AbstractC1154cN.c("audio/raw", false, false);
                    PM pm = listC2.isEmpty() ? null : (PM) listC2.get(0);
                    if (pm != null) {
                        paD = AbstractC2073uA.w(pm);
                    } else {
                        paD = AbstractC1154cN.d(wm, c1804p0, false, false);
                    }
                } else {
                    paD = AbstractC1154cN.d(wm, c1804p0, false, false);
                }
                if (paD.isEmpty()) {
                    i9 = 128;
                } else {
                    if (z8) {
                        PM pm2 = (PM) paD.get(0);
                        boolean zC = pm2.c(c1804p0);
                        if (!zC) {
                            int i15 = 1;
                            while (true) {
                                if (i15 >= paD.f15342J) {
                                    z7 = true;
                                    break;
                                }
                                PM pm3 = (PM) paD.get(i15);
                                if (pm3.c(c1804p0)) {
                                    pm2 = pm3;
                                    z7 = false;
                                    zC = true;
                                    break;
                                }
                                i15++;
                            }
                        } else {
                            z7 = true;
                            break;
                        }
                        int i16 = true != zC ? 3 : 4;
                        int i17 = 8;
                        if (zC && pm2.d(c1804p0)) {
                            i17 = 16;
                        }
                        return (true != pm2.f15381g ? 0 : 64) | i16 | i17 | 32 | (true != z7 ? 0 : 128) | i8;
                    }
                    i9 = 128;
                    i10 = 2;
                }
            }
        }
        return i9 | i10;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final C1203dK U(PM pm, C1804p0 c1804p0, C1804p0 c1804p1) {
        int i8;
        int i9;
        C1203dK c1203dKA = pm.a(c1804p0, c1804p1);
        boolean z7 = this.f17059v0 == null && k0(c1804p1);
        int i10 = c1203dKA.f18321e;
        if (z7) {
            i10 |= 32768;
        }
        if (m0(pm, c1804p1) > this.f20262B0) {
            i10 |= 64;
        }
        if (i10 != 0) {
            i9 = i10;
            i8 = 0;
        } else {
            i8 = c1203dKA.f18320d;
            i9 = 0;
        }
        return new C1203dK(pm.f15375a, c1804p0, c1804p1, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final C1203dK V(C0871Om c0871Om) {
        C1804p0 c1804p0 = (C1804p0) c0871Om.f15196H;
        c1804p0.getClass();
        this.f20265E0 = c1804p0;
        C1203dK c1203dKV = super.V(c0871Om);
        C1773oL c1773oL = this.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new K.a(c1773oL, c1804p0, c1203dKV, 28, 0));
        }
        return c1203dKV;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
    @Override // com.google.android.gms.internal.ads.VM
    public final KM Y(PM pm, C1804p0 c1804p0, float f8) {
        boolean z7;
        C1804p0[] c1804p0Arr = this.f17875j;
        c1804p0Arr.getClass();
        int length = c1804p0Arr.length;
        int iM0 = m0(pm, c1804p0);
        if (length != 1) {
            for (C1804p0 c1804p1 : c1804p0Arr) {
                if (pm.a(c1804p0, c1804p1).f18320d != 0) {
                    iM0 = Math.max(iM0, m0(pm, c1804p1));
                }
            }
        }
        this.f20262B0 = iM0;
        int i8 = Et.f13234a;
        String str = pm.f15375a;
        if (i8 < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Et.f13236c)) {
            String str2 = Et.f13235b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        this.f20263C0 = z7;
        this.f20264D0 = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        int i9 = this.f20262B0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", pm.f15377c);
        int i10 = c1804p0.f20362A;
        mediaFormat.setInteger("channel-count", i10);
        int i11 = c1804p0.f20363B;
        mediaFormat.setInteger("sample-rate", i11);
        p113o3.r.w(mediaFormat, c1804p0.f20386p);
        p113o3.r.r(mediaFormat, "max-input-size", i9);
        if (i8 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f8 != -1.0f) {
                if (i8 == 23) {
                    String str3 = Et.f13237d;
                    if (!"ZTE B2017G".equals(str3) && !"AXON 7 mini".equals(str3)) {
                        mediaFormat.setFloat("operating-rate", f8);
                    }
                } else {
                    mediaFormat.setFloat("operating-rate", f8);
                }
            }
        }
        String str4 = c1804p0.f20383m;
        if (i8 <= 28 && "audio/ac4".equals(str4)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i8 >= 24) {
            K k8 = new K();
            k8.f("audio/raw");
            k8.f14285z = i10;
            k8.f14253A = i11;
            k8.f14254B = 4;
            if (((C1618lM) this.f20274z0).k(new C1804p0(k8)) == 2) {
                mediaFormat.setInteger("pcm-encoding", 4);
            }
        }
        if (i8 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i8 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f20271K0));
        }
        C1804p0 c1804p2 = null;
        if ("audio/raw".equals(pm.f15376b) && !"audio/raw".equals(str4)) {
            c1804p2 = c1804p0;
        }
        this.f20266F0 = c1804p2;
        return new KM(pm, mediaFormat, c1804p0, null, this.f20261A0);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    @Override // com.google.android.gms.internal.ads.VM
    public final ArrayList Z(WM wm, C1804p0 c1804p0) {
        PA paD;
        if (c1804p0.f20383m == null) {
            paD = PA.f15340K;
        } else if (((C1618lM) this.f20274z0).k(c1804p0) != 0) {
            List listC = AbstractC1154cN.c("audio/raw", false, false);
            PM pm = listC.isEmpty() ? null : (PM) listC.get(0);
            if (pm != null) {
                paD = AbstractC2073uA.w(pm);
            } else {
                paD = AbstractC1154cN.d(wm, c1804p0, false, false);
            }
        } else {
            paD = AbstractC1154cN.d(wm, c1804p0, false, false);
        }
        Pattern pattern = AbstractC1154cN.f18220a;
        ArrayList arrayList = new ArrayList(paD);
        Collections.sort(arrayList, new XM(new Xu(c1804p0, 28)));
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final void a(C1778ob c1778ob) {
        C1618lM c1618lM = (C1618lM) this.f20274z0;
        c1618lM.getClass();
        c1618lM.f19782w = new C1778ob(Math.max(0.1f, Math.min(c1778ob.f20290a, 8.0f)), Math.max(0.1f, Math.min(c1778ob.f20291b, 8.0f)));
        C1360gM c1360gM = new C1360gM(c1778ob, -9223372036854775807L, -9223372036854775807L);
        if (c1618lM.i()) {
            c1618lM.f19780u = c1360gM;
        } else {
            c1618lM.f19781v = c1360gM;
        }
    }

    @Override // com.google.android.gms.internal.ads.TK
    public final void b(int i8, Object obj) {
        JM jm;
        TL tl = this.f20274z0;
        if (i8 == 2) {
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            C1618lM c1618lM = (C1618lM) tl;
            if (c1618lM.f19741G != fFloatValue) {
                c1618lM.f19741G = fFloatValue;
                if (c1618lM.i()) {
                    c1618lM.f19775p.setVolume(c1618lM.f19741G);
                    return;
                }
                return;
            }
            return;
        }
        if (i8 == 3) {
            C1097bH c1097bH = (C1097bH) obj;
            c1097bH.getClass();
            C1618lM c1618lM2 = (C1618lM) tl;
            if (c1618lM2.f19779t.equals(c1097bH)) {
                return;
            }
            c1618lM2.f19779t = c1097bH;
            GL gl = c1618lM2.f19777r;
            if (gl != null) {
                gl.f13519h = c1097bH;
                gl.b(EL.b(gl.f13512a, c1097bH, gl.f13518g));
            }
            c1618lM2.m();
            return;
        }
        if (i8 == 6) {
            C1100bK c1100bK = (C1100bK) obj;
            c1100bK.getClass();
            C1618lM c1618lM3 = (C1618lM) tl;
            if (c1618lM3.f19750P.equals(c1100bK)) {
                return;
            }
            if (c1618lM3.f19775p != null) {
                c1618lM3.f19750P.getClass();
            }
            c1618lM3.f19750P = c1100bK;
            return;
        }
        if (i8 == 12) {
            if (Et.f13234a >= 23) {
                AbstractC1670mM.a(tl, obj);
                return;
            }
            return;
        }
        if (i8 == 16) {
            obj.getClass();
            this.f20271K0 = ((Integer) obj).intValue();
            MM mm = this.f17013G;
            if (mm == null || Et.f13234a < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.f20271K0));
            mm.i(bundle);
            return;
        }
        if (i8 == 9) {
            obj.getClass();
            C1618lM c1618lM4 = (C1618lM) tl;
            c1618lM4.f19783x = ((Boolean) obj).booleanValue();
            C1360gM c1360gM = new C1360gM(c1618lM4.f19782w, -9223372036854775807L, -9223372036854775807L);
            if (c1618lM4.i()) {
                c1618lM4.f19780u = c1360gM;
                return;
            } else {
                c1618lM4.f19781v = c1360gM;
                return;
            }
        }
        if (i8 != 10) {
            if (i8 == 11) {
                this.f17010D = (C2291yK) obj;
                return;
            }
            return;
        }
        obj.getClass();
        int iIntValue = ((Integer) obj).intValue();
        C1618lM c1618lM5 = (C1618lM) tl;
        if (c1618lM5.f19749O != iIntValue) {
            c1618lM5.f19749O = iIntValue;
            c1618lM5.m();
        }
        if (Et.f13234a < 35 || (jm = this.f20261A0) == null) {
            return;
        }
        jm.d(iIntValue);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void c() {
        JM jm;
        B0.r rVar;
        GL gl = ((C1618lM) this.f20274z0).f19777r;
        if (gl != null && gl.f13520i) {
            gl.f13517f = null;
            int i8 = Et.f13234a;
            Context context = gl.f13512a;
            if (i8 >= 23 && (rVar = gl.f13514c) != null) {
                FL.b(context, rVar);
            }
            context.unregisterReceiver(gl.f13515d);
            C0115e c0115e = gl.f13516e;
            if (c0115e != null) {
                c0115e.f1922b.unregisterContentObserver(c0115e);
            }
            gl.f13520i = false;
        }
        if (Et.f13234a < 35 || (jm = this.f20261A0) == null) {
            return;
        }
        jm.b();
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void c0(VJ vj) {
        C1804p0 c1804p0;
        if (Et.f13234a < 29 || (c1804p0 = vj.f16991c) == null || !Objects.equals(c1804p0.f20383m, "audio/opus") || !this.f17034b0) {
            return;
        }
        ByteBuffer byteBuffer = vj.f16996h;
        byteBuffer.getClass();
        vj.f16991c.getClass();
        if (byteBuffer.remaining() == 8) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong();
            AudioTrack audioTrack = ((C1618lM) this.f20274z0).f19775p;
            if (audioTrack != null) {
                C1618lM.j(audioTrack);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void d() {
        TL tl = this.f20274z0;
        this.f20270J0 = false;
        try {
            try {
                W();
                H();
                this.f17059v0 = null;
                if (this.f20269I0) {
                    this.f20269I0 = false;
                    ((C1618lM) tl).o();
                }
            } catch (Throwable th) {
                this.f17059v0 = null;
                throw th;
            }
        } catch (Throwable th2) {
            if (this.f20269I0) {
                this.f20269I0 = false;
                ((C1618lM) tl).o();
            }
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void d0(Exception exc) {
        Zo.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        C1773oL c1773oL = this.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new OL(c1773oL, exc, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void e() {
        ((C1618lM) this.f20274z0).n();
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void e0(String str, long j8, long j9) {
        C1773oL c1773oL = this.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new RunnableC2010t(c1773oL, str, j8, j9, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void f() {
        n0();
        C1618lM c1618lM = (C1618lM) this.f20274z0;
        c1618lM.f19748N = false;
        if (c1618lM.i()) {
            WL wl = c1618lM.f19765f;
            wl.f17226k = 0L;
            wl.f17238w = 0;
            wl.f17237v = 0;
            wl.f17227l = 0L;
            wl.f17211C = 0L;
            wl.f17214F = 0L;
            wl.f17225j = false;
            if (wl.f17239x == -9223372036854775807L) {
                VL vl = wl.f17220e;
                vl.getClass();
                vl.a(0);
            } else {
                wl.f17241z = wl.d();
                if (!C1618lM.j(c1618lM.f19775p)) {
                    return;
                }
            }
            c1618lM.f19775p.pause();
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void f0(String str) {
        C1773oL c1773oL = this.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new RunnableC1170co(20, c1773oL, str));
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void g0(C1804p0 c1804p0, MediaFormat mediaFormat) throws C1512jK {
        int iR;
        int i8;
        C1804p0 c1804p1 = this.f20266F0;
        boolean z7 = true;
        int[] iArr = null;
        if (c1804p1 != null) {
            c1804p0 = c1804p1;
        } else if (this.f17013G != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(c1804p0.f20383m)) {
                iR = c1804p0.f20364C;
            } else if (Et.f13234a < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iR = mediaFormat.containsKey("v-bits-per-sample") ? Et.r(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iR = mediaFormat.getInteger("pcm-encoding");
            }
            K k8 = new K();
            k8.f("audio/raw");
            k8.f14254B = iR;
            k8.f14255C = c1804p0.f20365D;
            k8.f14256D = c1804p0.f20366E;
            k8.f14269j = c1804p0.f20381k;
            k8.f14260a = c1804p0.f20371a;
            k8.f14261b = c1804p0.f20372b;
            k8.f14262c = AbstractC2073uA.t(c1804p0.f20373c);
            k8.f14263d = c1804p0.f20374d;
            k8.f14264e = c1804p0.f20375e;
            k8.f14265f = c1804p0.f20376f;
            k8.f14285z = mediaFormat.getInteger("channel-count");
            k8.f14253A = mediaFormat.getInteger("sample-rate");
            C1804p0 c1804p2 = new C1804p0(k8);
            boolean z8 = this.f20263C0;
            int i9 = c1804p2.f20362A;
            if (z8 && i9 == 6 && (i8 = c1804p0.f20362A) < 6) {
                iArr = new int[i8];
                for (int i10 = 0; i10 < i8; i10++) {
                    iArr[i10] = i10;
                }
            } else if (this.f20264D0) {
                if (i9 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i9 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i9 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i9 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i9 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            c1804p0 = c1804p2;
        }
        try {
            int i11 = Et.f13234a;
            if (i11 >= 29) {
                if (this.f17034b0) {
                    u();
                }
                if (i11 < 29) {
                    z7 = false;
                }
                p113o3.r.M(z7);
            }
            ((C1618lM) this.f20274z0).l(c1804p0, iArr);
        } catch (QL e8) {
            throw s(5001, e8.f16020G, e8, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void h0() {
        ((C1618lM) this.f20274z0).f19738D = true;
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final void i0() throws C1512jK {
        try {
            C1618lM c1618lM = (C1618lM) this.f20274z0;
            if (!c1618lM.f19745K && c1618lM.i() && c1618lM.h()) {
                c1618lM.e();
                c1618lM.f19745K = true;
            }
        } catch (SL e8) {
            throw s(true != this.f17034b0 ? 5002 : 5003, e8.f16427I, e8, e8.f16426H);
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final boolean j0(long j8, long j9, MM mm, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C1804p0 c1804p0) throws C1512jK {
        byteBuffer.getClass();
        if (this.f20266F0 != null && (i9 & 2) != 0) {
            mm.getClass();
            mm.O(i8);
            return true;
        }
        TL tl = this.f20274z0;
        if (z7) {
            if (mm != null) {
                mm.O(i8);
            }
            this.f17049q0.f18213f += i10;
            ((C1618lM) tl).f19738D = true;
            return true;
        }
        try {
            if (!((C1618lM) tl).p(j10, i10, byteBuffer)) {
                return false;
            }
            if (mm != null) {
                mm.O(i8);
            }
            this.f17049q0.f18212e += i10;
            return true;
        } catch (RL e8) {
            C1804p0 c1804p1 = this.f20265E0;
            if (this.f17034b0) {
                u();
            }
            throw s(5001, c1804p1, e8, e8.f16259H);
        } catch (SL e9) {
            if (this.f17034b0) {
                u();
            }
            throw s(5002, c1804p0, e9, e9.f16426H);
        }
    }

    @Override // com.google.android.gms.internal.ads.VM
    public final boolean k0(C1804p0 c1804p0) {
        u();
        return ((C1618lM) this.f20274z0).k(c1804p0) != 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final String m() {
        return "MediaCodecAudioRenderer";
    }

    public final int m0(PM pm, C1804p0 c1804p0) {
        int i8;
        if (!"OMX.google.raw.decoder".equals(pm.f15375a) || (i8 = Et.f13234a) >= 24 || (i8 == 23 && Et.e(this.f20272x0))) {
            return c1804p0.f20384n;
        }
        return -1;
    }

    public final void n0() {
        long jMax;
        ArrayDeque arrayDeque;
        long jS;
        long jV;
        boolean zO = o();
        C1618lM c1618lM = (C1618lM) this.f20274z0;
        if (!c1618lM.i() || c1618lM.f19739E) {
            jMax = Long.MIN_VALUE;
        } else {
            long jMin = Math.min(c1618lM.f19765f.a(zO), Et.u(c1618lM.f19773n.f18751e, c1618lM.b()));
            while (true) {
                arrayDeque = c1618lM.f19766g;
                if (arrayDeque.isEmpty() || jMin < ((C1360gM) arrayDeque.getFirst()).f18935c) {
                    break;
                } else {
                    c1618lM.f19781v = (C1360gM) arrayDeque.remove();
                }
            }
            long j8 = jMin - c1618lM.f19781v.f18935c;
            boolean zIsEmpty = arrayDeque.isEmpty();
            C1093bD c1093bD = c1618lM.f19758X;
            if (zIsEmpty) {
                if (((C0937Ti) c1093bD.f18027I).zzg()) {
                    C0937Ti c0937Ti = (C0937Ti) c1093bD.f18027I;
                    long j9 = c0937Ti.f16716o;
                    if (j9 >= 1024) {
                        long j10 = c0937Ti.f16715n;
                        C0853Ni c0853Ni = c0937Ti.f16711j;
                        c0853Ni.getClass();
                        int i8 = c0853Ni.f15062k * c0853Ni.f15053b;
                        long j11 = j10 - ((long) (i8 + i8));
                        int i9 = c0937Ti.f16709h.f16699a;
                        int i10 = c0937Ti.f16708g.f16699a;
                        jV = i9 == i10 ? Et.v(j8, j11, j9, RoundingMode.FLOOR) : Et.v(j8, j11 * ((long) i9), j9 * ((long) i10), RoundingMode.FLOOR);
                    } else {
                        jV = (long) (((double) c0937Ti.f16704c) * j8);
                    }
                    j8 = jV;
                }
                jS = c1618lM.f19781v.f18934b + j8;
            } else {
                C1360gM c1360gM = (C1360gM) arrayDeque.getFirst();
                jS = c1360gM.f18934b - Et.s(c1360gM.f18935c - jMin, c1618lM.f19781v.f18933a.f20290a);
            }
            long jM = c1093bD.m();
            jMax = Et.u(c1618lM.f19773n.f18751e, jM) + jS;
            long j12 = c1618lM.f19755U;
            if (jM > j12) {
                long jU = Et.u(c1618lM.f19773n.f18751e, jM - j12);
                c1618lM.f19755U = jM;
                c1618lM.f19756V += jU;
                if (c1618lM.f19757W == null) {
                    c1618lM.f19757W = new Handler(Looper.myLooper());
                }
                c1618lM.f19757W.removeCallbacksAndMessages(null);
                c1618lM.f19757W.postDelayed(new RunnableC1026Zn(c1618lM, 22), 100L);
            }
        }
        if (jMax != Long.MIN_VALUE) {
            if (!this.f20268H0) {
                jMax = Math.max(this.f20267G0, jMax);
            }
            this.f20267G0 = jMax;
            this.f20268H0 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final boolean o() {
        if (!this.f17047o0) {
            return false;
        }
        C1618lM c1618lM = (C1618lM) this.f20274z0;
        if (c1618lM.i()) {
            return c1618lM.f19745K && !c1618lM.q();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final boolean p() {
        return ((C1618lM) this.f20274z0).q() || super.p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final FK t() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.AbstractC1048aK
    public final void y() {
        C1773oL c1773oL = this.f20273y0;
        this.f20269I0 = true;
        this.f20265E0 = null;
        try {
            ((C1618lM) this.f20274z0).m();
            super.y();
        } catch (Throwable th) {
            super.y();
            throw th;
        } finally {
            c1773oL.b(this.f17049q0);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final void z(boolean z7, boolean z8) {
        C1151cK c1151cK = new C1151cK();
        this.f17049q0 = c1151cK;
        C1773oL c1773oL = this.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new KL(c1773oL, c1151cK, 0));
        }
        u();
        C2344zL c2344zL = this.f17871f;
        c2344zL.getClass();
        C1618lM c1618lM = (C1618lM) this.f20274z0;
        c1618lM.f19770k = c2344zL;
        InterfaceC1840pl interfaceC1840pl = this.f17872g;
        interfaceC1840pl.getClass();
        c1618lM.f19765f.f17215G = interfaceC1840pl;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final long zza() {
        if (this.f17873h == 2) {
            n0();
        }
        return this.f20267G0;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final C1778ob zzc() {
        return ((C1618lM) this.f20274z0).f19782w;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final boolean zzj() {
        boolean z7 = this.f20270J0;
        this.f20270J0 = false;
        return z7;
    }
}
