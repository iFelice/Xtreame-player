package G;

import K.l;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public class f extends S {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static Class f3285I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static Constructor f3286J = null;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static Method f3287K = null;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static Method f3288L = null;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static boolean f3289M = false;

    public f() {
        super(9);
    }

    public static boolean V(Object obj, String str, int i8, boolean z7) {
        W();
        try {
            return ((Boolean) f3287K.invoke(obj, str, Integer.valueOf(i8), Boolean.valueOf(z7))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new RuntimeException(e8);
        }
    }

    public static void W() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f3289M) {
            return;
        }
        f3289M = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e8) {
            Log.e("TypefaceCompatApi21Impl", e8.getClass().getName(), e8);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f3286J = constructor;
        f3285I = cls;
        f3287K = method2;
        f3288L = method;
    }

    @Override // p039f.S
    public Typeface G(Context context, F.f fVar, Resources resources, int i8) {
        W();
        try {
            Object objNewInstance = f3286J.newInstance(new Object[0]);
            for (F.g gVar : fVar.f2964a) {
                File fileP = E3.f.p(context);
                if (fileP == null) {
                    return null;
                }
                try {
                    if (!E3.f.f(fileP, resources, gVar.f2970f)) {
                        return null;
                    }
                    if (!V(objNewInstance, fileP.getPath(), gVar.f2966b, gVar.f2967c)) {
                        return null;
                    }
                    fileP.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileP.delete();
                }
            }
            W();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f3285I, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f3288L.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e8) {
                throw new RuntimeException(e8);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e9) {
            throw new RuntimeException(e9);
        }
    }

    @Override // p039f.S
    public Typeface H(Context context, l[] lVarArr, int i8) {
        File file;
        if (lVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(N(i8, lVarArr).f4296a, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                    file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (ErrnoException unused) {
            }
            if (file != null && file.canRead()) {
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceCreateFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                Typeface typefaceJ = J(context, fileInputStream);
                fileInputStream.close();
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceJ;
            } catch (Throwable th3) {
                try {
                    fileInputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
