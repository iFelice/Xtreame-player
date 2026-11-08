package D3;

import C3.C0109i;
import K3.AbstractC0245s;
import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0159c f2334H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(C0159c c0159c) {
        super("com.google.android.gms.cast.framework.ICastConnectionController", 0);
        this.f2334H = c0159c;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        final int i9 = 1;
        C0159c c0159c = this.f2334H;
        if (i8 == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            AbstractC2501u.b(parcel);
            C3.F f8 = c0159c.f2375i;
            if (f8 != null && f8.f1464v == 2) {
                K3.r rVarA = AbstractC0245s.a();
                rVarA.f4570c = new C3.B(f8, string, string2);
                rVarA.f4568a = 8407;
                f8.doWrite(rVarA.a()).a(new p052g4.d(this) { // from class: D3.G

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ H f2333H;

                    {
                        this.f2333H = this;
                    }

                    @Override // p052g4.d
                    public final void onComplete(p052g4.h hVar) {
                        int i10 = i9;
                        H h8 = this.f2333H;
                        switch (i10) {
                            case 0:
                                C0159c.e(h8.f2334H, "launchApplication", hVar);
                                break;
                            default:
                                C0159c.e(h8.f2334H, "joinApplication", hVar);
                                break;
                        }
                    }
                });
            }
            parcel2.writeNoException();
            return true;
        }
        final int i10 = 0;
        if (i8 == 2) {
            String string3 = parcel.readString();
            C0109i c0109i = (C0109i) AbstractC2501u.a(parcel, C0109i.CREATOR);
            AbstractC2501u.b(parcel);
            C3.F f9 = c0159c.f2375i;
            if (f9 != null && f9.f1464v == 2) {
                K3.r rVarA2 = AbstractC0245s.a();
                rVarA2.f4570c = new p004a3.b(f9, string3, c0109i, 6);
                rVarA2.f4568a = 8406;
                f9.doWrite(rVarA2.a()).a(new p052g4.d(this) { // from class: D3.G

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ H f2333H;

                    {
                        this.f2333H = this;
                    }

                    @Override // p052g4.d
                    public final void onComplete(p052g4.h hVar) {
                        int i11 = i10;
                        H h8 = this.f2333H;
                        switch (i11) {
                            case 0:
                                C0159c.e(h8.f2334H, "launchApplication", hVar);
                                break;
                            default:
                                C0159c.e(h8.f2334H, "joinApplication", hVar);
                                break;
                        }
                    }
                });
            }
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 3) {
            if (i8 != 4) {
                if (i8 != 5) {
                    return false;
                }
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            }
            int i11 = parcel.readInt();
            AbstractC2501u.b(parcel);
            C0159c.d(c0159c, i11);
            parcel2.writeNoException();
            return true;
        }
        String string4 = parcel.readString();
        AbstractC2501u.b(parcel);
        C3.F f10 = c0159c.f2375i;
        if (f10 != null && f10.f1464v == 2) {
            K3.r rVarA3 = AbstractC0245s.a();
            rVarA3.f4570c = new p096m2.c(16, f10, string4);
            rVarA3.f4568a = 8409;
            f10.doWrite(rVarA3.a());
        }
        parcel2.writeNoException();
        return true;
    }
}
