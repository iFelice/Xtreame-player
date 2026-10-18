package Z3;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.H1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import okhttp3.HttpUrl;
import org.xmlpull.v1.XmlPullParser;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f8244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final S3.g f8245b = new S3.g(8);

    public static boolean a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null || !display.isHdr()) {
            return false;
        }
        for (int i8 : display.getHdrCapabilities().getSupportedHdrTypes()) {
            if (i8 == 1) {
                return true;
            }
        }
        return false;
    }

    public static String b(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i8 = 0; i8 < attributeCount; i8++) {
            if (xmlPullParser.getAttributeName(i8).equals(str)) {
                return xmlPullParser.getAttributeValue(i8);
            }
        }
        return null;
    }

    public static boolean c(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str);
    }

    public static boolean d(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean e(XmlPullParser xmlPullParser) {
        return xmlPullParser.getEventType() == 2;
    }

    public static boolean f(XmlPullParser xmlPullParser, String str) {
        return e(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static p094m0.N g(W0.t tVar, boolean z7) {
        p094m0.N nD = new W0.C(0).d(tVar, z7 ? null : p065i1.i.f25535f);
        if (nD == null || nD.f26777a.length == 0) {
            return null;
        }
        return nD;
    }

    public static final Cursor h(P1.x xVar, P1.z zVar) {
        q0.h(xVar, "db");
        return xVar.l(zVar, null);
    }

    public static W0.y i(p117p0.E e8) {
        e8.M(1);
        int iC = e8.C();
        long j8 = ((long) e8.f28036b) + ((long) iC);
        int i8 = iC / 18;
        long[] jArrCopyOf = new long[i8];
        long[] jArrCopyOf2 = new long[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            long jT = e8.t();
            if (jT == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i9);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i9);
                break;
            }
            jArrCopyOf[i9] = jT;
            jArrCopyOf2[i9] = e8.t();
            e8.M(2);
        }
        e8.M((int) (j8 - ((long) e8.f28036b)));
        return new W0.y(jArrCopyOf, jArrCopyOf2);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void j(Resources.Theme theme) {
        Method method;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            D.g.g(theme);
            return;
        }
        if (i8 >= 23) {
            synchronized (F.m.f2987a) {
                if (F.m.f2989c) {
                    method = F.m.f2988b;
                    if (method != null) {
                        method.invoke(theme, new Object[0]);
                    }
                } else {
                    try {
                        Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                        F.m.f2988b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e8) {
                        Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e8);
                    }
                    F.m.f2989c = true;
                    method = F.m.f2988b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e9) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e9);
                            F.m.f2988b = null;
                        }
                    }
                }
                throw th;
            }
        }
    }

    public static final void k(View view, p032e0.m mVar) {
        q0.h(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, mVar);
    }

    public static void l(ViewGroup viewGroup, boolean z7) {
        if (!H1.f22935g) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                H1.f22934f = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e8);
            }
            H1.f22935g = true;
        }
        Method method = H1.f22934f;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z7));
            } catch (IllegalAccessException e9) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e9);
            } catch (InvocationTargetException e10) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e10);
            }
        }
    }

    public static synchronized String m(Context context) {
        String str;
        try {
            if (f8244a == null) {
                ContentResolver contentResolver = context.getContentResolver();
                String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
                if (string == null || Cw.e0()) {
                    string = "emulator";
                }
                int i8 = 0;
                while (true) {
                    if (i8 < 3) {
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            messageDigest.update(string.getBytes());
                            str = String.format("%032X", new BigInteger(1, messageDigest.digest()));
                            break;
                        } catch (ArithmeticException unused) {
                            str = HttpUrl.FRAGMENT_ENCODE_SET;
                            break;
                        } catch (NoSuchAlgorithmException unused2) {
                            i8++;
                        }
                    }
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                    break;
                }
                f8244a = str;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f8244a;
    }
}
