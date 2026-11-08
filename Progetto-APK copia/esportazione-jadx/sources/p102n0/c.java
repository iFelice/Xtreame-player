package p102n0;

import F.a;
import H.e;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import p039f.RunnableC3004t;
import p086l.H;
import p117p0.AbstractC3164b;
import p117p0.C3171i;
import p130q5.i;
import p141s0.InterfaceC3184i;
import p176w5.b;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AudioManager f27312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f27313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f27314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Method f27315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f27316e;

    public static void a(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(Object obj) {
        c(obj, "Argument must not be null");
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void d(InterfaceC3184i interfaceC3184i) {
        if (interfaceC3184i != null) {
            try {
                interfaceC3184i.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean e(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z7 = true;
        for (File file2 : fileArrListFiles) {
            z7 = e(file2) && z7;
        }
        return z7;
    }

    public static synchronized AudioManager f(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                f27312a = null;
            }
            AudioManager audioManager = f27312a;
            if (audioManager != null) {
                return audioManager;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                C3171i c3171i = new C3171i();
                AbstractC3164b.s().execute(new RunnableC3004t(4, applicationContext, c3171i));
                c3171i.c();
                AudioManager audioManager2 = f27312a;
                audioManager2.getClass();
                return audioManager2;
            }
            AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
            f27312a = audioManager3;
            audioManager3.getClass();
            return audioManager3;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static int g(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return H.g(drawable);
        }
        if (!f27316e) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f27315d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e8);
            }
            f27316e = true;
        }
        Method method = f27315d;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e9) {
                Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e9);
                f27315d = null;
            }
        }
        return 0;
    }

    public static Intent h(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String strJ = j(activity, activity.getComponentName());
            if (strJ == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, strJ);
            try {
                return j(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strJ + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    public static Intent i(Context context, ComponentName componentName) {
        String strJ = j(context, componentName);
        if (strJ == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strJ);
        return j(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String j(Context context, ComponentName componentName) {
        int i8;
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 29) {
            i8 = 269222528;
        } else {
            i8 = i9 >= 24 ? 787072 : 640;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i8);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0092  */
    /* JADX WARN: Code duplicated, block: B:31:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0098  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:86:0x009e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00d8 A[SYNTHETIC] */
    public static b k(b bVar, int i8, int i9, a aVar) throws i {
        int i10;
        if (i8 <= 0 || i9 <= 0) {
            throw i.f29623I;
        }
        b bVar2 = new b(i8, i9);
        int i11 = i8 * 2;
        float[] fArr = new float[i11];
        for (int i12 = 0; i12 < i9; i12++) {
            float f8 = i12 + 0.5f;
            for (int i13 = 0; i13 < i11; i13 += 2) {
                fArr[i13] = (i13 / 2) + 0.5f;
                fArr[i13 + 1] = f8;
            }
            int i14 = i11 - 1;
            for (int i15 = 0; i15 < i14; i15 += 2) {
                float f9 = fArr[i15];
                int i16 = i15 + 1;
                float f10 = fArr[i16];
                float f11 = (aVar.f2951f * f10) + (aVar.f2948c * f9) + aVar.f2954i;
                fArr[i15] = (((aVar.f2949d * f10) + (aVar.f2946a * f9)) + aVar.f2952g) / f11;
                fArr[i16] = (((aVar.f2950e * f10) + (aVar.f2947b * f9)) + aVar.f2953h) / f11;
            }
            int i17 = bVar.f31091G;
            int i18 = 0;
            boolean z7 = true;
            while (true) {
                i10 = bVar.f31092H;
                if (i18 >= i14 || !z7) {
                    break;
                }
                int i19 = (int) fArr[i18];
                int i20 = i18 + 1;
                int i21 = (int) fArr[i20];
                if (i19 < -1 || i19 > i17 || i21 < -1 || i21 > i10) {
                    throw i.f29623I;
                }
                if (i19 == -1) {
                    fArr[i18] = 0.0f;
                } else {
                    if (i19 == i17) {
                        fArr[i18] = i17 - 1;
                    } else {
                        z7 = false;
                    }
                    if (i21 == -1) {
                        fArr[i20] = 0.0f;
                    } else {
                        if (i21 == i10) {
                            fArr[i20] = i10 - 1;
                        }
                        i18 += 2;
                    }
                    z7 = true;
                    i18 += 2;
                }
                z7 = true;
                if (i21 == -1) {
                    fArr[i20] = 0.0f;
                } else {
                    if (i21 == i10) {
                        fArr[i20] = i10 - 1;
                    }
                    i18 += 2;
                }
                z7 = true;
                i18 += 2;
            }
            boolean z8 = true;
            for (int i22 = i11 - 2; i22 >= 0 && z8; i22 -= 2) {
                int i23 = (int) fArr[i22];
                int i24 = i22 + 1;
                int i25 = (int) fArr[i24];
                if (i23 < -1 || i23 > i17 || i25 < -1 || i25 > i10) {
                    throw i.f29623I;
                }
                if (i23 == -1) {
                    fArr[i22] = 0.0f;
                } else {
                    if (i23 == i17) {
                        fArr[i22] = i17 - 1;
                    } else {
                        z8 = false;
                    }
                    if (i25 == -1) {
                        fArr[i24] = 0.0f;
                    } else {
                        if (i25 == i10) {
                            fArr[i24] = i10 - 1;
                        }
                    }
                    z8 = true;
                }
                z8 = true;
                if (i25 == -1) {
                    fArr[i24] = 0.0f;
                } else {
                    if (i25 == i10) {
                        fArr[i24] = i10 - 1;
                    }
                }
                z8 = true;
            }
            for (int i26 = 0; i26 < i11; i26 += 2) {
                try {
                    if (bVar.b((int) fArr[i26], (int) fArr[i26 + 1])) {
                        bVar2.f(i26 / 2, i12);
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw i.f29623I;
                }
            }
        }
        return bVar2;
    }

    public static boolean l(Drawable drawable, int i8) {
        if (Build.VERSION.SDK_INT >= 23) {
            return H.t(drawable, i8);
        }
        if (!f27314c) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f27313b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e8);
            }
            f27314c = true;
        }
        Method method = f27313b;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i8));
                return true;
            } catch (Exception e9) {
                Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e9);
                f27313b = null;
            }
        }
        return false;
    }

    public static void m(Drawable drawable, int i8) {
        drawable.setTint(i8);
    }

    public static void n(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    public static void o(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    public static final void p(String str) {
        q0.h(str, "message");
        throw new IllegalArgumentException(str);
    }

    public static Drawable q(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 || (drawable instanceof H.b)) {
            return drawable;
        }
        e eVar = new e(drawable);
        e.e();
        return eVar;
    }
}
