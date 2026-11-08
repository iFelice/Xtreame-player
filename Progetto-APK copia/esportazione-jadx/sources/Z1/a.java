package Z1;

import A0.O;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f8214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f8215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f8216c;

    public a(m mVar, m mVar2, m mVar3) {
        this.f8214a = mVar;
        this.f8215b = mVar2;
        this.f8216c = mVar3;
    }

    public abstract b a();

    public final Class b(Class cls) throws ClassNotFoundException {
        String name = cls.getName();
        m mVar = this.f8216c;
        Class cls2 = (Class) mVar.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(O.B(cls.getPackage().getName(), ".", cls.getSimpleName(), "Parcelizer"), false, cls.getClassLoader());
        mVar.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method c(String str) throws NoSuchMethodException {
        m mVar = this.f8214a;
        Method method = (Method) mVar.get(str);
        if (method != null) {
            return method;
        }
        Method declaredMethod = Class.forName(str, false, a.class.getClassLoader()).getDeclaredMethod("read", a.class);
        mVar.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method d(Class cls) throws NoSuchMethodException {
        String name = cls.getName();
        m mVar = this.f8215b;
        Method method = (Method) mVar.get(name);
        if (method != null) {
            return method;
        }
        Method declaredMethod = b(cls).getDeclaredMethod("write", cls, a.class);
        mVar.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean e(int i8);

    public final int f(int i8, int i9) {
        return !e(i9) ? i8 : ((b) this).f8218e.readInt();
    }

    public final Parcelable g(Parcelable parcelable, int i8) {
        if (!e(i8)) {
            return parcelable;
        }
        return ((b) this).f8218e.readParcelable(b.class.getClassLoader());
    }

    public final c h() {
        String string = ((b) this).f8218e.readString();
        if (string == null) {
            return null;
        }
        try {
            return (c) c(string).invoke(null, a());
        } catch (ClassNotFoundException e8) {
            throw new RuntimeException(e8);
        } catch (IllegalAccessException e9) {
            throw new RuntimeException(e9);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(e11);
        }
    }

    public abstract void i(int i8);

    public final void j(int i8, int i9) {
        i(i9);
        ((b) this).f8218e.writeInt(i8);
    }

    public final void k(Parcelable parcelable, int i8) {
        i(i8);
        ((b) this).f8218e.writeParcelable(parcelable, 0);
    }

    public final void l(c cVar) {
        if (cVar == null) {
            ((b) this).f8218e.writeString(null);
            return;
        }
        try {
            ((b) this).f8218e.writeString(b(cVar.getClass()).getName());
            b bVarA = a();
            try {
                d(cVar.getClass()).invoke(null, cVar, bVarA);
                int i8 = bVarA.f8222i;
                if (i8 >= 0) {
                    int i9 = bVarA.f8217d.get(i8);
                    Parcel parcel = bVarA.f8218e;
                    int iDataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i9);
                    parcel.writeInt(iDataPosition - i9);
                    parcel.setDataPosition(iDataPosition);
                }
            } catch (ClassNotFoundException e8) {
                throw new RuntimeException(e8);
            } catch (IllegalAccessException e9) {
                throw new RuntimeException(e9);
            } catch (NoSuchMethodException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                Throwable cause = e11.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(e11);
                }
                throw ((Error) cause);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException(cVar.getClass().getSimpleName().concat(" does not have a Parcelizer"), e12);
        }
    }
}
