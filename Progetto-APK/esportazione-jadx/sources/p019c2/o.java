package p019c2;

import D0.U;
import a7.b;
import com.bumptech.glide.d;
import java.lang.reflect.InvocationTargetException;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f10639a;

    static {
        p gVar;
        try {
            gVar = new U((WebViewProviderFactoryBoundaryInterface) b.b(WebViewProviderFactoryBoundaryInterface.class, d.i()), 21);
        } catch (ClassNotFoundException unused) {
            gVar = new g();
        } catch (IllegalAccessException e8) {
            throw new RuntimeException(e8);
        } catch (NoSuchMethodException e9) {
            throw new RuntimeException(e9);
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
        f10639a = gVar;
    }
}
