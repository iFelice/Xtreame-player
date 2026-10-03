package D3;

import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
public final class B extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0164h f2325H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Class f2326I;

    public B(InterfaceC0164h interfaceC0164h) {
        super("com.google.android.gms.cast.framework.ISessionManagerListener", 0);
        this.f2325H = interfaceC0164h;
        this.f2326I = C0159c.class;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        Class cls = this.f2326I;
        InterfaceC0164h interfaceC0164h = this.f2325H;
        switch (i8) {
            case 1:
                R3.b bVar = new R3.b(interfaceC0164h);
                parcel2.writeNoException();
                AbstractC2501u.d(parcel2, bVar);
                return true;
            case 2:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f = (AbstractC0162f) R3.b.v0(aVarJ0);
                if (cls.isInstance(abstractC0162f) && interfaceC0164h != null) {
                    interfaceC0164h.b((AbstractC0162f) cls.cast(abstractC0162f));
                }
                parcel2.writeNoException();
                return true;
            case 3:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                String string = parcel.readString();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f2 = (AbstractC0162f) R3.b.v0(aVarJ1);
                if (cls.isInstance(abstractC0162f2) && interfaceC0164h != null) {
                    interfaceC0164h.l((AbstractC0162f) cls.cast(abstractC0162f2), string);
                }
                parcel2.writeNoException();
                return true;
            case 4:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f3 = (AbstractC0162f) R3.b.v0(aVarJ2);
                if (cls.isInstance(abstractC0162f3) && interfaceC0164h != null) {
                    interfaceC0164h.j((AbstractC0162f) cls.cast(abstractC0162f3), i9);
                }
                parcel2.writeNoException();
                return true;
            case 5:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f4 = (AbstractC0162f) R3.b.v0(aVarJ3);
                if (cls.isInstance(abstractC0162f4) && interfaceC0164h != null) {
                    interfaceC0164h.o((AbstractC0162f) cls.cast(abstractC0162f4));
                }
                parcel2.writeNoException();
                return true;
            case 6:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f5 = (AbstractC0162f) R3.b.v0(aVarJ4);
                if (cls.isInstance(abstractC0162f5) && interfaceC0164h != null) {
                    interfaceC0164h.q((AbstractC0162f) cls.cast(abstractC0162f5), i10);
                }
                parcel2.writeNoException();
                return true;
            case 7:
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                String string2 = parcel.readString();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f6 = (AbstractC0162f) R3.b.v0(aVarJ5);
                if (cls.isInstance(abstractC0162f6) && interfaceC0164h != null) {
                    interfaceC0164h.h((AbstractC0162f) cls.cast(abstractC0162f6), string2);
                }
                parcel2.writeNoException();
                return true;
            case 8:
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                int i11 = AbstractC2501u.f22800a;
                boolean z7 = parcel.readInt() != 0;
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f7 = (AbstractC0162f) R3.b.v0(aVarJ6);
                if (cls.isInstance(abstractC0162f7) && interfaceC0164h != null) {
                    interfaceC0164h.e((AbstractC0162f) cls.cast(abstractC0162f7), z7);
                }
                parcel2.writeNoException();
                return true;
            case 9:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                int i12 = parcel.readInt();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f8 = (AbstractC0162f) R3.b.v0(aVarJ7);
                if (cls.isInstance(abstractC0162f8) && interfaceC0164h != null) {
                    interfaceC0164h.g((AbstractC0162f) cls.cast(abstractC0162f8), i12);
                }
                parcel2.writeNoException();
                return true;
            case 10:
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                AbstractC2501u.b(parcel);
                AbstractC0162f abstractC0162f9 = (AbstractC0162f) R3.b.v0(aVarJ8);
                if (cls.isInstance(abstractC0162f9) && interfaceC0164h != null) {
                    interfaceC0164h.f((AbstractC0162f) cls.cast(abstractC0162f9), i13);
                }
                parcel2.writeNoException();
                return true;
            case 11:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            default:
                return false;
        }
    }
}
