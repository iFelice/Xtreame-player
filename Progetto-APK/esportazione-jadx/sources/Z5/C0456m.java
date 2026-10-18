package Z5;

import com.google.api.Service;
import com.google.protobuf.U2;

/* JADX INFO: renamed from: Z5.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0456m implements c0, p085k6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8462G;

    public /* synthetic */ C0456m(int i8) {
        this.f8462G = i8;
    }

    public static void a(int i8, int i9) {
        if (i8 < 0 || i8 >= i9) {
            throw new IndexOutOfBoundsException(U2.j("index: ", i8, ", size: ", i9));
        }
    }

    public static void b(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(U2.j("index: ", i8, ", size: ", i9));
        }
    }

    public static void c(int i8, int i9, int i10) {
        if (i8 < 0 || i9 > i10) {
            StringBuilder sbD = A0.O.D("fromIndex: ", i8, ", toIndex: ", i9, ", size: ");
            sbD.append(i10);
            throw new IndexOutOfBoundsException(sbD.toString());
        }
        if (i8 > i9) {
            throw new IllegalArgumentException(U2.j("fromIndex: ", i8, " > toIndex: ", i9));
        }
    }

    public static int d(int i8, int i9) {
        int i10 = i8 + (i8 >> 1);
        if (i10 - i9 < 0) {
            i10 = i9;
        }
        if (i10 - 2147483639 <= 0) {
            return i10;
        }
        if (i9 > 2147483639) {
            return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        return 2147483639;
    }

    public final String toString() {
        switch (this.f8462G) {
            case 6:
                return "grpc-default-executor";
            case 11:
                return "EmptyAction";
            case 14:
                return "IdentityFunction";
            default:
                return super.toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0456m(int i8, int i9) {
        this(17);
        this.f8462G = i8;
        switch (i8) {
            case 18:
                this(18);
                break;
            case 19:
                this(19);
                break;
            case 20:
                this(20);
                break;
            case 21:
                this(21);
                break;
            case 22:
                this(22);
                break;
            case 23:
                this(23);
                break;
            case 24:
                this(24);
                break;
            case 25:
                this(25);
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                this(26);
                break;
            case 27:
                this(27);
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                this(28);
                break;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                this(29);
                break;
            default:
                break;
        }
    }
}
