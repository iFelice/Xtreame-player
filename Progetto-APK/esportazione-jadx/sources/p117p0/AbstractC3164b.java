package p117p0;

import Z1.c;
import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.transition.h;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.gms.internal.measurement.H1;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import p135r2.b;
import p135r2.i;
import p135r2.r;
import pe.hf.black20.R;
import z4.d0;

/* JADX INFO: renamed from: p0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3164b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ExecutorService f28065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f28066b = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f28067c = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f28068d = {12445, 13120, 12344, 12344};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f28069e = {12445, 13632, 12344, 12344};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f28070f = {12344};

    public static long A(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e8) {
            if ("0".equals(str) || "-1".equals(str)) {
                r.d("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            Log.e("Volley", r.a("Unable to parse dateStr: %s, falling back to 0", str), e8);
            return 0L;
        }
    }

    public static byte[] B(int i8, InputStream inputStream) throws IOException {
        byte[] bArr = new byte[i8];
        int i9 = 0;
        while (i9 < i8) {
            int i10 = inputStream.read(bArr, i9, i8 - i9);
            if (i10 < 0) {
                throw new IllegalStateException(p000a.r.f("Not enough bytes to read: ", i8));
            }
            i9 += i10;
        }
        return bArr;
    }

    public static byte[] C(FileInputStream fileInputStream, int i8, int i9) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i9];
            byte[] bArr2 = new byte[2048];
            int i10 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i10 < i8) {
                int i11 = fileInputStream.read(bArr2);
                if (i11 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i8 + " bytes");
                }
                inflater.setInput(bArr2, 0, i11);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i9 - iInflate);
                    i10 += i11;
                } catch (DataFormatException e8) {
                    throw new IllegalStateException(e8.getMessage());
                }
            }
            if (i10 == i8) {
                if (!inflater.finished()) {
                    throw new IllegalStateException("Inflater did not finish");
                }
                inflater.end();
                return bArr;
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i8 + " actual=" + i10);
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    public static long D(int i8, int i9, E e8) {
        e8.L(i8);
        if (e8.a() < 5) {
            return -9223372036854775807L;
        }
        int iL = e8.l();
        if ((8388608 & iL) != 0 || ((2096896 & iL) >> 8) != i9 || (iL & 32) == 0 || e8.z() < 7 || e8.a() < 7 || (e8.z() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        e8.j(0, bArr, 6);
        return ((255 & ((long) bArr[4])) >> 7) | ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1);
    }

    public static long E(int i8, InputStream inputStream) throws IOException {
        byte[] bArrB = B(i8, inputStream);
        long j8 = 0;
        for (int i9 = 0; i9 < i8; i9++) {
            j8 += ((long) (bArrB[i9] & 255)) << (i9 * 8);
        }
        return j8;
    }

    public static void F(float[] fArr) {
        Matrix.setIdentityM(fArr, 0);
    }

    public static void G(ByteArrayOutputStream byteArrayOutputStream, long j8, int i8) throws IOException {
        byte[] bArr = new byte[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            bArr[i9] = (byte) ((j8 >> (i9 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void H(ByteArrayOutputStream byteArrayOutputStream, int i8) throws IOException {
        G(byteArrayOutputStream, i8, 2);
    }

    public static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            return bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1;
        }
        if (bundle2 == null) {
            return bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1;
        }
        return bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
    }

    public static void b(int i8, int i9) throws p {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(3379, iArr, 0);
        int i10 = iArr[0];
        H1.h("Create a OpenGL context first or run the GL methods on an OpenGL thread.", i10 > 0);
        if (i8 < 0 || i9 < 0) {
            throw new p("width or height is less than 0");
        }
        if (i8 > i10 || i9 > i10) {
            throw new p(p000a.r.f("width or height is greater than GL_MAX_TEXTURE_SIZE ", i10));
        }
    }

    public static void c(int i8, int i9, int i10) {
        GLES20.glBindTexture(i8, i9);
        e();
        GLES20.glTexParameteri(i8, 10240, i10);
        e();
        GLES20.glTexParameteri(i8, 10241, i10);
        e();
        GLES20.glTexParameteri(i8, 10242, 33071);
        e();
        GLES20.glTexParameteri(i8, 10243, 33071);
        e();
    }

    public static void d(String str) throws p {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        StringBuilder sbL = p000a.r.l(str, ", error code: 0x");
        sbL.append(Integer.toHexString(iEglGetError));
        throw new p(sbL.toString());
    }

    public static void e() {
        StringBuilder sb = new StringBuilder();
        boolean z7 = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z7) {
                sb.append('\n');
            }
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            if (strGluErrorString == null) {
                strGluErrorString = "error code: 0x" + Integer.toHexString(iGlGetError);
            }
            sb.append("glError: ");
            sb.append(strGluErrorString);
            z7 = true;
        }
        if (z7) {
            throw new p(sb.toString());
        }
    }

    public static void f(String str, boolean z7) throws p {
        if (!z7) {
            throw new p(str);
        }
    }

    public static void g(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void h() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClearDepthf(1.0f);
        GLES20.glClear(16640);
        e();
    }

    public static byte[] i(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            deflater.end();
            throw th3;
        }
    }

    public static float[] j() {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        return fArr;
    }

    public static ObjectAnimator k(View view, TransitionValues transitionValues, int i8, int i9, float f8, float f9, float f10, float f11, DecelerateInterpolator decelerateInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transitionPosition);
        if (iArr != null) {
            f8 = (iArr[0] - i8) + translationX;
            f9 = (iArr[1] - i9) + translationY;
        }
        int iRound = Math.round(f8 - translationX) + i8;
        int iRound2 = Math.round(f9 - translationY) + i9;
        view.setTranslationX(f8);
        view.setTranslationY(f9);
        if (f8 == f10 && f9 == f11) {
            return null;
        }
        Path path = new Path();
        path.moveTo(f8, f9);
        path.lineTo(f10, f11);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, (Property<View, Float>) View.TRANSLATION_Y, path);
        h hVar = new h(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        transition.addListener(hVar);
        objectAnimatorOfFloat.addListener(hVar);
        objectAnimatorOfFloat.addPauseListener(hVar);
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        return objectAnimatorOfFloat;
    }

    public static FloatBuffer l(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static EGLContext m(EGLContext eGLContext, EGLDisplay eGLDisplay, int i8, int[] iArr) throws p {
        boolean z7 = true;
        H1.d(Arrays.equals(iArr, f28066b) || Arrays.equals(iArr, f28067c));
        if (i8 != 2 && i8 != 3) {
            z7 = false;
        }
        H1.d(z7);
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplay, u(eGLDisplay, iArr), eGLContext, new int[]{12440, i8, 12344}, 0);
        if (eGLContextEglCreateContext == null || eGLContextEglCreateContext.equals(EGL14.EGL_NO_CONTEXT)) {
            EGL14.eglTerminate(eGLDisplay);
            throw new p(p000a.r.f("eglCreateContext() failed to create a valid context. The device may not support EGL version ", i8));
        }
        e();
        return eGLContextEglCreateContext;
    }

    public static EGLSurface n(EGLContext eGLContext, EGLDisplay eGLDisplay) throws p {
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        int[] iArr = f28066b;
        if (x("EGL_KHR_surfaceless_context")) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, u(eGLDisplay, iArr), new int[]{12375, 1, 12374, 1, 12344}, 0);
            d("Error creating a new EGL Pbuffer surface");
        }
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContext);
        d("Error making context current");
        r(0, 1, 1);
        return eGLSurfaceEglCreatePbufferSurface;
    }

    public static float[] o(d0 d0Var) {
        float[] fArr = new float[d0Var.f31846J * 4];
        for (int i8 = 0; i8 < d0Var.f31846J; i8++) {
            System.arraycopy(d0Var.get(i8), 0, fArr, i8 * 4, 4);
        }
        return fArr;
    }

    public static void p(EGLContext eGLContext, EGLDisplay eGLDisplay) throws p {
        if (eGLDisplay == null || eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
            return;
        }
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        d("Error releasing context");
        if (eGLContext != null && !eGLContext.equals(EGL14.EGL_NO_CONTEXT)) {
            EGL14.eglDestroyContext(eGLDisplay, eGLContext);
            d("Error destroying context");
        }
        EGL14.eglReleaseThread();
        d("Error releasing thread");
        EGL14.eglTerminate(eGLDisplay);
        d("Error terminating display");
    }

    public static void q(EGLDisplay eGLDisplay, EGLSurface eGLSurface) throws p {
        if (eGLDisplay == null || eGLDisplay.equals(EGL14.EGL_NO_DISPLAY) || eGLSurface == null || eGLSurface.equals(EGL14.EGL_NO_SURFACE)) {
            return;
        }
        EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
        d("Error destroying surface");
    }

    public static void r(int i8, int i9, int i10) {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        if (iArr[0] != i8) {
            GLES20.glBindFramebuffer(36160, i8);
        }
        e();
        GLES20.glViewport(0, 0, i9, i10);
        e();
    }

    public static synchronized Executor s() {
        try {
            if (f28065a == null) {
                String str = M.f28050a;
                f28065a = Executors.newSingleThreadExecutor(new L("ExoPlayer:BackgroundExecutor", 0));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f28065a;
    }

    public static EGLDisplay t() throws p {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        f("No EGL display.", !eGLDisplayEglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        f("Error in eglInitialize.", EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0));
        e();
        return eGLDisplayEglGetDisplay;
    }

    public static EGLConfig u(EGLDisplay eGLDisplay, int[] iArr) throws p {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        throw new p("eglChooseConfig failed.");
    }

    public static c v(Bundle bundle) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(MediaSessionCompat.KEY_SESSION2_TOKEN);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(AbstractC3164b.class.getClassLoader());
            Parcelable parcelable = bundle2.getParcelable("a");
            if (parcelable instanceof ParcelImpl) {
                return ((ParcelImpl) parcelable).f9717G;
            }
            throw new IllegalArgumentException("Invalid parcel");
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static boolean w() {
        return Build.VERSION.SDK_INT >= 33 && x("EGL_EXT_gl_colorspace_bt2020_pq");
    }

    public static boolean x(String str) {
        String strEglQueryString = EGL14.eglQueryString(t(), 12373);
        return strEglQueryString != null && strEglQueryString.contains(str);
    }

    public static b y(i iVar) {
        long j8;
        boolean z7;
        long j9;
        boolean z8;
        long j10;
        long j11;
        long j12;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map map = iVar.f29806c;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long jA = str != null ? A(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            int i8 = 0;
            j8 = 0;
            z7 = false;
            j9 = 0;
            while (true) {
                z8 = true;
                if (i8 >= strArrSplit.length) {
                    break;
                }
                String strTrim = strArrSplit[i8].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j8 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j9 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z7 = true;
                }
                i8++;
            }
        } else {
            j8 = 0;
            z7 = false;
            j9 = 0;
            z8 = false;
        }
        String str3 = (String) map.get("Expires");
        long jA2 = str3 != null ? A(str3) : 0L;
        String str4 = (String) map.get("Last-Modified");
        long jA3 = str4 != null ? A(str4) : 0L;
        String str5 = (String) map.get("ETag");
        if (z8) {
            j11 = jCurrentTimeMillis + (j8 * 1000);
            if (z7) {
                j12 = j11;
            } else {
                Long.signum(j9);
                j12 = (j9 * 1000) + j11;
            }
            j10 = j12;
        } else {
            j10 = 0;
            if (jA <= 0 || jA2 < jA) {
                j11 = 0;
            } else {
                j11 = jCurrentTimeMillis + (jA2 - jA);
                j10 = j11;
            }
        }
        b bVar = new b(0);
        bVar.f29781a = iVar.f29805b;
        bVar.f29782b = str5;
        bVar.f29786f = j11;
        bVar.f29785e = j10;
        bVar.f29783c = jA;
        bVar.f29784d = jA3;
        bVar.f29787g = map;
        bVar.f29788h = iVar.f29807d;
        return bVar;
    }

    public static String z(String str, Map map) {
        String str2;
        if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i8 = 1; i8 < strArrSplit.length; i8++) {
                String[] strArrSplit2 = strArrSplit[i8].trim().split("=", 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }
}
