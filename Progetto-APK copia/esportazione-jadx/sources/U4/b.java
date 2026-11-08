package U4;

import A0.I;
import B0.AbstractC0067q;
import B0.w0;
import D0.C0126p;
import D0.H;
import G0.C;
import G0.r;
import I0.s;
import K0.k;
import K0.w;
import M4.c;
import O0.C0286j;
import P0.q;
import R0.u;
import S0.g;
import S0.j;
import S0.l;
import S0.n;
import S0.o;
import T1.e;
import T1.f;
import U0.O;
import U0.Q;
import W0.F;
import W0.x;
import Y5.t;
import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.method.KeyListener;
import android.text.method.TransformationMethod;
import android.view.Surface;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.cardview.widget.CardView;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p021c4.InterfaceC0581g;
import p032e0.EnumC2981i;
import p032e0.m;
import p065i1.i;
import p079k.z;
import p086l.C3061x;
import p094m0.C3121d;
import p094m0.C3136t;
import p094m0.C3138v;
import p094m0.P;
import p094m0.n0;
import p117p0.InterfaceC3168f;
import p117p0.M;
import p118p1.h;
import p141s0.A;
import p141s0.C3185j;
import p141s0.C3186k;
import p196z2.d;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class b implements z, n0, o, s, w, k, q, n, j, O, I, H, r, c, L0.a, R0.s, e, t, InterfaceC0581g, h, p173w2.j, d {
    public /* synthetic */ b() {
        this(0);
    }

    public static C0286j N(ArrayList arrayList, AbstractList abstractList) {
        return new C0286j(arrayList, abstractList);
    }

    public static MediaCodec O(C3061x c3061x) throws IOException {
        ((K0.o) c3061x.f26410G).getClass();
        String str = ((K0.o) c3061x.f26410G).f4355a;
        Trace.beginSection("createCodec:" + str);
        MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
        Trace.endSection();
        return mediaCodecCreateByCodecName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void R(Activity activity, EnumC2981i enumC2981i) {
        q0.h(activity, "activity");
        q0.h(enumC2981i, "event");
        if (activity instanceof m) {
            p032e0.o oVarH = ((m) activity).h();
            if (oVarH instanceof p032e0.o) {
                oVarH.f(enumC2981i);
            }
        }
    }

    public static AudioAttributes T(C3121d c3121d, boolean z7) {
        return z7 ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : (AudioAttributes) c3121d.a().f24988H;
    }

    public static p124q.a U(x0 x0Var) {
        return (p124q.a) ((Drawable) x0Var.f22390H);
    }

    public static g V(p072j0.c cVar, w0 w0Var) {
        int i8;
        IOException iOException = (IOException) w0Var.f1123K;
        if (!(iOException instanceof A) || ((i8 = ((A) iOException).f29862J) != 403 && i8 != 404 && i8 != 410 && i8 != 416 && i8 != 500 && i8 != 503)) {
            return null;
        }
        if (cVar.a(1)) {
            return new g(1, 300000L);
        }
        if (cVar.a(2)) {
            return new g(2, 60000L);
        }
        return null;
    }

    public static long Z(w0 w0Var) {
        Throwable cause = (IOException) w0Var.f1123K;
        if (!(cause instanceof P) && !(cause instanceof FileNotFoundException) && !(cause instanceof p141s0.w) && !(cause instanceof l)) {
            int i8 = C3185j.f29946H;
            while (cause != null) {
                if (!(cause instanceof C3185j) || ((C3185j) cause).f29947G != 2008) {
                    cause = cause.getCause();
                }
            }
            return Math.min((w0Var.f1120H - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
        }
        return -9223372036854775807L;
    }

    public static boolean a0(InputConnection inputConnection, Editable editable, int i8, int i9, boolean z7) {
        int iMin;
        Object obj = U.a.f6622a;
        if (editable == null || inputConnection == null || i8 < 0 || i9 < 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) {
            return false;
        }
        if (z7) {
            int iMax = Math.max(i8, 0);
            int length = editable.length();
            if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                loop0: while (true) {
                    boolean z8 = false;
                    while (true) {
                        if (iMax == 0) {
                            break loop0;
                        }
                        selectionStart--;
                        if (selectionStart < 0) {
                            if (!z8) {
                                selectionStart = 0;
                                break loop0;
                            }
                            break;
                        }
                        char cCharAt = editable.charAt(selectionStart);
                        if (z8) {
                            if (Character.isHighSurrogate(cCharAt)) {
                                iMax--;
                            }
                        } else if (!Character.isSurrogate(cCharAt)) {
                            iMax--;
                        } else if (!Character.isHighSurrogate(cCharAt)) {
                            z8 = true;
                        }
                        selectionStart = -1;
                        break;
                    }
                }
            }
            selectionStart = -1;
            break;
            int iMax2 = Math.max(i9, 0);
            iMin = editable.length();
            if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                loop2: while (true) {
                    boolean z9 = false;
                    while (true) {
                        if (iMax2 != 0) {
                            if (selectionEnd >= iMin) {
                                if (!z9) {
                                    break loop2;
                                }
                                break loop2;
                            }
                            char cCharAt2 = editable.charAt(selectionEnd);
                            if (z9) {
                                if (Character.isLowSurrogate(cCharAt2)) {
                                    iMax2--;
                                    selectionEnd++;
                                }
                            } else if (!Character.isSurrogate(cCharAt2)) {
                                iMax2--;
                                selectionEnd++;
                            } else if (!Character.isLowSurrogate(cCharAt2)) {
                                selectionEnd++;
                                z9 = true;
                            }
                            iMin = -1;
                            break loop2;
                        }
                        iMin = selectionEnd;
                        break loop2;
                    }
                }
            }
            iMin = -1;
            break loop2;
            if (selectionStart == -1 || iMin == -1) {
                return false;
            }
        } else {
            selectionStart = Math.max(selectionStart - i8, 0);
            iMin = Math.min(selectionEnd + i9, editable.length());
        }
        U.b[] bVarArr = (U.b[]) editable.getSpans(selectionStart, iMin, U.b.class);
        if (bVarArr == null || bVarArr.length <= 0) {
            return false;
        }
        for (U.b bVar : bVarArr) {
            int spanStart = editable.getSpanStart(null);
            int spanEnd = editable.getSpanEnd(null);
            selectionStart = Math.min(spanStart, selectionStart);
            iMin = Math.max(spanEnd, iMin);
        }
        int iMax3 = Math.max(selectionStart, 0);
        int iMin2 = Math.min(iMin, editable.length());
        inputConnection.beginBatchEdit();
        editable.delete(iMax3, iMin2);
        inputConnection.endBatchEdit();
        return true;
    }

    public static void c0(Activity activity) {
        q0.h(activity, "activity");
        if (Build.VERSION.SDK_INT >= 29) {
            p032e0.z.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new p032e0.z());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new p032e0.A(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override // S0.o
    public Object B(Uri uri, C3186k c3186k) {
        return Long.valueOf(M.U(new BufferedReader(new InputStreamReader(c3186k)).readLine()));
    }

    @Override // I0.s
    public o C(I0.o oVar, I0.l lVar) {
        return new I0.r(oVar, lVar);
    }

    @Override // K0.w
    public boolean D(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // K0.w
    public int E() {
        return MediaCodecList.getCodecCount();
    }

    @Override // I0.s
    public o H() {
        return new I0.r(I0.o.f3907n, null);
    }

    @Override // p118p1.h
    public long J(W0.t tVar) {
        return -1L;
    }

    @Override // K0.w
    public boolean M() {
        return false;
    }

    public com.bumptech.glide.d P(C3136t c3136t) {
        String str = c3136t.f27041o;
        if (str != null) {
            str.hashCode();
            switch (str) {
                case "application/vnd.dvb.ait":
                    return new p041f1.b(0);
                case "application/x-icy":
                    return new p057h1.a();
                case "application/id3":
                    return new i(null);
                case "application/x-emsg":
                    return new p041f1.b(1);
                case "application/x-scte35":
                    return new p081k1.c();
            }
        }
        throw new IllegalArgumentException(p148t.a.c("Attempted to create decoder for unsupported MIME type: ", str));
    }

    public R0.t[] Q(R0.r[] rVarArr, S0.c cVar) {
        R0.t bVar;
        d0 d0VarR = R0.b.r(rVarArr);
        R0.t[] tVarArr = new R0.t[rVarArr.length];
        for (int i8 = 0; i8 < rVarArr.length; i8++) {
            R0.r rVar = rVarArr[i8];
            if (rVar != null) {
                int[] iArr = rVar.f6242b;
                if (iArr.length != 0) {
                    if (iArr.length == 1) {
                        bVar = new u(iArr[0], rVar.f6243c, rVar.f6241a);
                    } else {
                        long j8 = 25000;
                        bVar = new R0.b(rVar.f6241a, iArr, rVar.f6243c, cVar, 10000, j8, j8, 1279, 719, 0.7f, 0.75f, (z4.H) d0VarR.get(i8), InterfaceC3168f.f28080a);
                    }
                    tVarArr[i8] = bVar;
                }
            }
        }
        return tVarArr;
    }

    public AudioTrack S(C0126p c0126p, C3121d c3121d, int i8, Context context) {
        int i9 = Build.VERSION.SDK_INT;
        boolean z7 = c0126p.f1966d;
        int i10 = c0126p.f1963a;
        int i11 = c0126p.f1965c;
        int i12 = c0126p.f1964b;
        if (i9 < 23) {
            return new AudioTrack(T(c3121d, z7), M.q(i12, i11, i10), c0126p.f1968f, 1, i8);
        }
        AudioTrack.Builder sessionId = AbstractC0067q.h().setAudioAttributes(T(c3121d, z7)).setAudioFormat(M.q(i12, i11, i10)).setTransferMode(1).setBufferSizeInBytes(c0126p.f1968f).setSessionId(i8);
        if (i9 >= 29) {
            sessionId.setOffloadedPlayback(c0126p.f1967e);
        }
        if (i9 >= 34 && context != null) {
            sessionId.setContext(context);
        }
        return sessionId.build();
    }

    public int Y(int i8) {
        return i8 == 7 ? 6 : 3;
    }

    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    public boolean b0() {
        H1.j(null);
        for (AudioDeviceInfo audioDeviceInfo : null.getDevices(2)) {
            if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                return true;
            }
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 26 && audioDeviceInfo.getType() == 22) {
                return true;
            }
            if (i8 >= 28 && audioDeviceInfo.getType() == 23) {
                return true;
            }
            if (i8 >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                return true;
            }
            if (i8 >= 33 && audioDeviceInfo.getType() == 30) {
                return true;
            }
        }
        return false;
    }

    @Override // p196z2.d
    public Bitmap c(int i8, int i9, Bitmap.Config config) {
        return Bitmap.createBitmap(i8, i9, config);
    }

    public boolean d0() {
        return false;
    }

    @Override // K0.w
    public MediaCodecInfo e(int i8) {
        return MediaCodecList.getCodecInfoAt(i8);
    }

    public void h0(x0 x0Var, float f8) {
        p124q.a aVarU = U(x0Var);
        boolean useCompatPadding = ((CardView) x0Var.f22391I).getUseCompatPadding();
        boolean preventCornerOverlap = ((CardView) x0Var.f22391I).getPreventCornerOverlap();
        if (f8 != aVarU.f29430e || aVarU.f29431f != useCompatPadding || aVarU.f29432g != preventCornerOverlap) {
            aVarU.f29430e = f8;
            aVarU.f29431f = useCompatPadding;
            aVarU.f29432g = preventCornerOverlap;
            aVarU.b(null);
            aVarU.invalidateSelf();
        }
        if (!((CardView) x0Var.f22391I).getUseCompatPadding()) {
            x0Var.w(0, 0, 0, 0);
            return;
        }
        Object obj = x0Var.f22390H;
        float f9 = ((p124q.a) ((Drawable) obj)).f29430e;
        float f10 = ((p124q.a) ((Drawable) obj)).f29426a;
        int iCeil = (int) Math.ceil(p124q.b.a(f9, f10, ((CardView) x0Var.f22391I).getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(p124q.b.b(f9, f10, ((CardView) x0Var.f22391I).getPreventCornerOverlap()));
        x0Var.w(iCeil, iCeil2, iCeil, iCeil2);
    }

    public boolean i0(C3136t c3136t) {
        String str = c3136t.f27041o;
        return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
    }

    @Override // p196z2.d
    public Bitmap j(int i8, int i9, Bitmap.Config config) {
        return Bitmap.createBitmap(i8, i9, config);
    }

    @Override // G0.r
    public G0.l l(G0.o oVar, C3136t c3136t) {
        if (c3136t.f27045s == null) {
            return null;
        }
        return new G0.t(new G0.k(6001, new C()));
    }

    @Override // G0.r
    public int m(C3136t c3136t) {
        return c3136t.f27045s != null ? 1 : 0;
    }

    @Override // G0.r
    public /* synthetic */ G0.q n(G0.o oVar, C3136t c3136t) {
        return G0.q.f3377c;
    }

    @Override // P0.q
    public boolean next() {
        return false;
    }

    @Override // p079k.z
    public boolean o(p079k.o oVar) {
        return false;
    }

    @Override // S0.j
    public void p() {
        synchronized (T0.c.f6513a) {
            Object obj = T0.c.f6514b;
            synchronized (obj) {
                if (T0.c.f6515c) {
                    return;
                }
                long jA = T0.c.a();
                synchronized (obj) {
                    SystemClock.elapsedRealtime();
                    T0.c.f6516d = jA;
                    T0.c.f6515c = true;
                }
            }
        }
    }

    @Override // P0.q
    public long q() {
        throw new NoSuchElementException();
    }

    @Override // K0.w
    public boolean s(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // P0.q
    public long t() {
        throw new NoSuchElementException();
    }

    @Override // T1.e
    public f u(T1.d dVar) {
        return new U1.h(dVar.f6520a, dVar.f6521b, dVar.f6522c, dVar.f6523d, dVar.f6524e);
    }

    @Override // p021c4.InterfaceC0581g
    public String v(String str, String str2) {
        return null;
    }

    @Override // p118p1.h
    public F w() {
        return new x(-9223372036854775807L);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    @Override // K0.k
    public K0.l y(C3061x c3061x) throws Throwable {
        MediaCodec mediaCodecO = null;
        try {
            mediaCodecO = O(c3061x);
            Trace.beginSection("configureCodec");
            Object obj = c3061x.f26413J;
            mediaCodecO.configure((MediaFormat) c3061x.f26411H, (Surface) obj, (MediaCrypto) c3061x.f26414K, (((Surface) obj) == null && ((K0.o) c3061x.f26410G).f4364j && Build.VERSION.SDK_INT >= 35) ? 8 : 0);
            Trace.endSection();
            Trace.beginSection("startCodec");
            mediaCodecO.start();
            Trace.endSection();
            return new K0.A(mediaCodecO, (K0.i) c3061x.f26415L);
        } catch (IOException e8) {
            e = e8;
            if (mediaCodecO != null) {
                mediaCodecO.release();
            }
            throw e;
        } catch (RuntimeException e9) {
            e = e9;
            if (mediaCodecO != null) {
                mediaCodecO.release();
            }
            throw e;
        }
    }

    public /* synthetic */ b(int i8) {
    }

    @Override // U0.O
    public /* synthetic */ void F() {
    }

    @Override // S0.j
    public void I() {
    }

    @Override // p196z2.d
    public void K() {
    }

    @Override // S0.n
    public void b() {
    }

    @Override // U0.O
    public /* synthetic */ void k() {
    }

    @Override // G0.r
    public /* synthetic */ void prepare() {
    }

    @Override // A0.I
    public /* synthetic */ void r() {
    }

    @Override // G0.r
    public /* synthetic */ void release() {
    }

    @Override // A0.I
    public /* synthetic */ void x() {
    }

    @Override // U0.O
    public /* synthetic */ void z() {
    }

    @Override // A0.I
    public /* synthetic */ void A(C3138v c3138v) {
    }

    @Override // p196z2.d
    public void G(int i8) {
    }

    @Override // p118p1.h
    public void L(long j8) {
    }

    public InputFilter[] W(InputFilter[] inputFilterArr) {
        return inputFilterArr;
    }

    public KeyListener X(KeyListener keyListener) {
        return keyListener;
    }

    public void f0(boolean z7) {
    }

    @Override // U0.O
    public /* synthetic */ void g(p094m0.w0 w0Var) {
    }

    public void g0(boolean z7) {
    }

    @Override // U0.O
    public /* synthetic */ void i(Q q7) {
    }

    public TransformationMethod j0(TransformationMethod transformationMethod) {
        return transformationMethod;
    }

    @Override // p079k.z
    public void d(p079k.o oVar, boolean z7) {
    }

    public InputConnection e0(InputConnection inputConnection, EditorInfo editorInfo) {
        return inputConnection;
    }

    @Override // G0.r
    public void f(Looper looper, C0.I i8) {
    }

    @Override // p173w2.j
    public void h(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
