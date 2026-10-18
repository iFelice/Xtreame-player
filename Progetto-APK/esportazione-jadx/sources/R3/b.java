package R3;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import java.lang.reflect.Field;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractBinderC2478o implements a {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f6289H;

    public b(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper", 1);
        this.f6289H = obj;
    }

    public static a j0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new e(iBinder, "com.google.android.gms.dynamic.IObjectWrapper", 3);
    }

    public static Object v0(a aVar) {
        if (aVar instanceof b) {
            return ((b) aVar).f6289H;
        }
        IBinder iBinderAsBinder = aVar.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i8 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i8++;
                field = field2;
            }
        }
        if (i8 != 1) {
            throw new IllegalArgumentException(r.f("Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        com.bumptech.glide.c.h(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e8) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e8);
        } catch (NullPointerException e9) {
            throw new IllegalArgumentException("Binder object is null.", e9);
        }
    }
}
