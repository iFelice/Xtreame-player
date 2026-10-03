package G;

import K.l;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import p039f.S;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public final class g extends S {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Class f3290I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Constructor f3291J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Method f3292K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Method f3293L;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e8) {
            Log.e("TypefaceCompatApi24Impl", e8.getClass().getName(), e8);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f3291J = constructor;
        f3290I = cls;
        f3292K = method2;
        f3293L = method;
    }

    public static boolean V(Object obj, ByteBuffer byteBuffer, int i8, int i9, boolean z7) {
        try {
            return ((Boolean) f3292K.invoke(obj, byteBuffer, Integer.valueOf(i8), null, Integer.valueOf(i9), Boolean.valueOf(z7))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface W(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f3290I, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f3293L.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x006b A[LOOP:0: B:9:0x0016->B:37:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x006a A[SYNTHETIC] */
    @Override // p039f.S
    public final Typeface G(Context context, F.f fVar, Resources resources, int i8) {
        Object objNewInstance;
        MappedByteBuffer map;
        try {
            objNewInstance = f3291J.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (F.g gVar : fVar.f2964a) {
            int i9 = gVar.f2970f;
            File fileP = E3.f.p(context);
            if (fileP != null) {
                try {
                    if (E3.f.f(fileP, resources, i9)) {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(fileP);
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IOException unused2) {
                            map = null;
                        }
                        fileP.delete();
                    } else {
                        fileP.delete();
                    }
                    if (map == null) {
                        return null;
                    }
                    if (!V(objNewInstance, map, gVar.f2969e, gVar.f2966b, gVar.f2967c)) {
                        return null;
                    }
                } catch (Throwable th3) {
                    fileP.delete();
                    throw th3;
                }
            }
            map = null;
            if (map == null) {
                return null;
            }
            if (!V(objNewInstance, map, gVar.f2969e, gVar.f2966b, gVar.f2967c)) {
                return null;
            }
        }
        return W(objNewInstance);
    }

    @Override // p039f.S
    public final Typeface H(Context context, l[] lVarArr, int i8) {
        Object objNewInstance;
        try {
            objNewInstance = f3291J.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        m mVar = new m(0);
        for (l lVar : lVarArr) {
            Uri uri = lVar.f4296a;
            ByteBuffer byteBufferT = (ByteBuffer) mVar.get(uri);
            if (byteBufferT == null) {
                byteBufferT = E3.f.t(context, uri);
                mVar.put(uri, byteBufferT);
            }
            if (byteBufferT == null) {
                return null;
            }
            if (!V(objNewInstance, byteBufferT, lVar.f4297b, lVar.f4298c, lVar.f4299d)) {
                return null;
            }
        }
        Typeface typefaceW = W(objNewInstance);
        if (typefaceW == null) {
            return null;
        }
        return Typeface.create(typefaceW, i8);
    }
}
