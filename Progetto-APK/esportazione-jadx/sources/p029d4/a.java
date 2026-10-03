package p029d4;

import J3.f;
import J3.g;
import J3.h;
import S3.c;
import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;
import org.chromium.net.ApiVersion;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f24657a = f.f4145b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f24658b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f24659c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f24660d = "0";

    public static boolean a() {
        c cVar;
        synchronized (f24658b) {
            cVar = f24659c;
        }
        return cVar != null;
    }

    public static void b(Context context) {
        synchronized (f24658b) {
            try {
                if (a()) {
                    return;
                }
                com.bumptech.glide.c.i(context, "Context must not be null");
                ClassLoader classLoader = a.class.getClassLoader();
                com.bumptech.glide.c.h(classLoader);
                try {
                    classLoader.loadClass("org.chromium.net.CronetEngine");
                    int apiLevel = ApiVersion.getApiLevel();
                    f fVar = f24657a;
                    fVar.getClass();
                    f.d(context);
                    try {
                        c cVarC = c.c(context, c.f6415b, "com.google.android.gms.cronet_dynamite");
                        try {
                            Class<?> clsLoadClass = cVarC.f6428a.getClassLoader().loadClass("org.chromium.net.impl.ImplVersion");
                            if (clsLoadClass.getClassLoader() == a.class.getClassLoader()) {
                                Log.e("a", "ImplVersion class is missing from Cronet module.");
                                throw new g();
                            }
                            Method method = clsLoadClass.getMethod("getApiLevel", new Class[0]);
                            Method method2 = clsLoadClass.getMethod("getCronetVersion", new Class[0]);
                            Integer num = (Integer) method.invoke(null, new Object[0]);
                            com.bumptech.glide.c.h(num);
                            int iIntValue = num.intValue();
                            String str = (String) method2.invoke(null, new Object[0]);
                            com.bumptech.glide.c.h(str);
                            f24660d = str;
                            if (apiLevel <= iIntValue) {
                                f24659c = cVarC;
                                return;
                            }
                            if (fVar.b(2, context, "cr") == null) {
                                Log.e("a", "Unable to fetch error resolution intent");
                                throw new g();
                            }
                            String str2 = f24660d;
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 174);
                            sb.append("Google Play Services update is required. The API Level of the client is ");
                            sb.append(apiLevel);
                            sb.append(". The API Level of the implementation is ");
                            sb.append(iIntValue);
                            sb.append(". The Cronet implementation version is ");
                            sb.append(str2);
                            throw new h(sb.toString());
                        } catch (Exception e8) {
                            Log.e("a", "Unable to read Cronet version from the Cronet module ", e8);
                            throw ((g) new g().initCause(e8));
                        }
                    } catch (S3.a e9) {
                        Log.e("a", "Unable to load Cronet module", e9);
                        throw ((g) new g().initCause(e9));
                    }
                } catch (ClassNotFoundException e10) {
                    Log.e("a", "Cronet API is not available. Have you included all required dependencies?");
                    throw ((g) new g().initCause(e10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
