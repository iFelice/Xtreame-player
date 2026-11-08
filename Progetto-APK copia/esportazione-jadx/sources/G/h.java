package G;

import K.l;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h extends f {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Class f3294N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Constructor f3295O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Method f3296P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Method f3297Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Method f3298R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Method f3299S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Method f3300T;

    public h() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method methodD0;
        Method method2;
        Method method3;
        Method methodE0;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            methodD0 = d0(cls);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
            method3 = cls.getMethod("freeze", new Class[0]);
            method = cls.getMethod("abortCreation", new Class[0]);
            methodE0 = e0(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e8) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e8.getClass().getName()), e8);
            cls = null;
            method = null;
            constructor = null;
            methodD0 = null;
            method2 = null;
            method3 = null;
            methodE0 = null;
        }
        this.f3294N = cls;
        this.f3295O = constructor;
        this.f3296P = methodD0;
        this.f3297Q = method2;
        this.f3298R = method3;
        this.f3299S = method;
        this.f3300T = methodE0;
    }

    public static Method d0(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    @Override // G.f, p039f.S
    public final Typeface G(Context context, F.f fVar, Resources resources, int i8) {
        if (!b0()) {
            return super.G(context, fVar, resources, i8);
        }
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        for (F.g gVar : fVar.f2964a) {
            if (!Y(context, objC0, gVar.f2965a, gVar.f2969e, gVar.f2966b, gVar.f2967c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f2968d))) {
                X(objC0);
                return null;
            }
        }
        if (a0(objC0)) {
            return Z(objC0);
        }
        return null;
    }

    @Override // G.f, p039f.S
    public final Typeface H(Context context, l[] lVarArr, int i8) {
        Typeface typefaceZ;
        if (lVarArr.length < 1) {
            return null;
        }
        if (!b0()) {
            l lVarN = N(i8, lVarArr);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(lVarN.f4296a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(lVarN.f4298c).setItalic(lVarN.f4299d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (l lVar : lVarArr) {
            if (lVar.f4300e == 0) {
                Uri uri = lVar.f4296a;
                if (!map.containsKey(uri)) {
                    map.put(uri, E3.f.t(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        boolean z7 = false;
        for (l lVar2 : lVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(lVar2.f4296a);
            if (byteBuffer != null) {
                try {
                    if (!((Boolean) this.f3297Q.invoke(objC0, byteBuffer, Integer.valueOf(lVar2.f4297b), null, Integer.valueOf(lVar2.f4298c), Integer.valueOf(lVar2.f4299d ? 1 : 0))).booleanValue()) {
                        X(objC0);
                        return null;
                    }
                    z7 = true;
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            }
        }
        if (!z7) {
            X(objC0);
            return null;
        }
        if (a0(objC0) && (typefaceZ = Z(objC0)) != null) {
            return Typeface.create(typefaceZ, i8);
        }
        return null;
    }

    @Override // p039f.S
    public final Typeface K(Context context, Resources resources, int i8, String str, int i9) {
        if (!b0()) {
            return super.K(context, resources, i8, str, i9);
        }
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        if (!Y(context, objC0, str, 0, -1, -1, null)) {
            X(objC0);
            return null;
        }
        if (a0(objC0)) {
            return Z(objC0);
        }
        return null;
    }

    public final void X(Object obj) {
        try {
            this.f3299S.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean Y(Context context, Object obj, String str, int i8, int i9, int i10, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3296P.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface Z(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f3294N, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f3300T.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean a0(Object obj) {
        try {
            return ((Boolean) this.f3298R.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean b0() {
        Method method = this.f3296P;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    public final Object c0() {
        try {
            return this.f3295O.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method e0(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
