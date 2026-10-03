package p094m0;

import android.net.Uri;
import android.os.Bundle;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class L {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final L f26742I;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final Integer f26743A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final Integer f26744B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final CharSequence f26745C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final CharSequence f26746D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final CharSequence f26747E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final Integer f26748F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Bundle f26749G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final H f26750H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f26751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f26752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f26753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CharSequence f26754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f26755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CharSequence f26756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CharSequence f26757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f26758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f26759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Integer f26760j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Uri f26761k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Integer f26762l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Integer f26763m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Integer f26764n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Boolean f26765o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Boolean f26766p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Integer f26767q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Integer f26768r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Integer f26769s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Integer f26770t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Integer f26771u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Integer f26772v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Integer f26773w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final CharSequence f26774x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final CharSequence f26775y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final CharSequence f26776z;

    static {
        K k8 = new K();
        F f8 = H.f31804H;
        k8.f26715G = d0.f31844K;
        f26742I = new L(k8);
        U2.r(0, 1, 2, 3, 4);
        U2.r(5, 6, 8, 9, 10);
        U2.r(11, 12, 13, 14, 15);
        U2.r(16, 17, 18, 19, 20);
        U2.r(21, 22, 23, 24, 25);
        U2.r(26, 27, 28, 29, 30);
        U2.r(31, 32, 33, 34, 1000);
    }

    public L(K k8) {
        Boolean boolValueOf = k8.f26730o;
        Integer numValueOf = k8.f26729n;
        Integer numValueOf2 = k8.f26713E;
        int i8 = 1;
        int i9 = 0;
        int i10 = 0;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                if (numValueOf2 != null) {
                    switch (numValueOf2.intValue()) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        case 32:
                        case 33:
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                        case 35:
                            break;
                        case 20:
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                        case 27:
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        default:
                            i8 = 0;
                            break;
                        case 21:
                            i8 = 2;
                            break;
                        case 22:
                            i8 = 3;
                            break;
                        case 23:
                            i8 = 4;
                            break;
                        case 24:
                            i8 = 5;
                            break;
                        case 25:
                            i8 = 6;
                            break;
                    }
                    i10 = i8;
                }
                numValueOf = Integer.valueOf(i10);
            }
        } else if (numValueOf != null) {
            boolean z7 = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z7);
            if (z7 && numValueOf2 == null) {
                switch (numValueOf.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i9 = 21;
                        break;
                    case 3:
                        i9 = 22;
                        break;
                    case 4:
                        i9 = 23;
                        break;
                    case 5:
                        i9 = 24;
                        break;
                    case 6:
                        i9 = 25;
                        break;
                    default:
                        i9 = 20;
                        break;
                }
                numValueOf2 = Integer.valueOf(i9);
            }
        }
        this.f26751a = k8.f26716a;
        this.f26752b = k8.f26717b;
        this.f26753c = k8.f26718c;
        this.f26754d = k8.f26719d;
        this.f26755e = k8.f26720e;
        this.f26756f = k8.f26721f;
        this.f26757g = k8.f26722g;
        this.f26758h = k8.f26723h;
        this.f26759i = k8.f26724i;
        this.f26760j = k8.f26725j;
        this.f26761k = k8.f26726k;
        this.f26762l = k8.f26727l;
        this.f26763m = k8.f26728m;
        this.f26764n = numValueOf;
        this.f26765o = boolValueOf;
        this.f26766p = k8.f26731p;
        Integer num = k8.f26732q;
        this.f26767q = num;
        this.f26768r = num;
        this.f26769s = k8.f26733r;
        this.f26770t = k8.f26734s;
        this.f26771u = k8.f26735t;
        this.f26772v = k8.f26736u;
        this.f26773w = k8.f26737v;
        this.f26774x = k8.f26738w;
        this.f26775y = k8.f26739x;
        this.f26776z = k8.f26740y;
        this.f26743A = k8.f26741z;
        this.f26744B = k8.f26709A;
        this.f26745C = k8.f26710B;
        this.f26746D = k8.f26711C;
        this.f26747E = k8.f26712D;
        this.f26748F = numValueOf2;
        this.f26750H = k8.f26715G;
        this.f26749G = k8.f26714F;
    }

    public final K a() {
        K k8 = new K();
        k8.f26716a = this.f26751a;
        k8.f26717b = this.f26752b;
        k8.f26718c = this.f26753c;
        k8.f26719d = this.f26754d;
        k8.f26720e = this.f26755e;
        k8.f26721f = this.f26756f;
        k8.f26722g = this.f26757g;
        k8.f26723h = this.f26758h;
        k8.f26724i = this.f26759i;
        k8.f26725j = this.f26760j;
        k8.f26726k = this.f26761k;
        k8.f26727l = this.f26762l;
        k8.f26728m = this.f26763m;
        k8.f26729n = this.f26764n;
        k8.f26730o = this.f26765o;
        k8.f26731p = this.f26766p;
        k8.f26732q = this.f26768r;
        k8.f26733r = this.f26769s;
        k8.f26734s = this.f26770t;
        k8.f26735t = this.f26771u;
        k8.f26736u = this.f26772v;
        k8.f26737v = this.f26773w;
        k8.f26738w = this.f26774x;
        k8.f26739x = this.f26775y;
        k8.f26740y = this.f26776z;
        k8.f26741z = this.f26743A;
        k8.f26709A = this.f26744B;
        k8.f26710B = this.f26745C;
        k8.f26711C = this.f26746D;
        k8.f26712D = this.f26747E;
        k8.f26713E = this.f26748F;
        k8.f26715G = this.f26750H;
        k8.f26714F = this.f26749G;
        return k8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || L.class != obj.getClass()) {
            return false;
        }
        L l4 = (L) obj;
        if (Objects.equals(this.f26751a, l4.f26751a) && Objects.equals(this.f26752b, l4.f26752b) && Objects.equals(this.f26753c, l4.f26753c) && Objects.equals(this.f26754d, l4.f26754d) && Objects.equals(this.f26755e, l4.f26755e) && Objects.equals(this.f26756f, l4.f26756f) && Objects.equals(this.f26757g, l4.f26757g) && Objects.equals(this.f26758h, l4.f26758h) && Arrays.equals(this.f26759i, l4.f26759i) && Objects.equals(this.f26760j, l4.f26760j) && Objects.equals(this.f26761k, l4.f26761k) && Objects.equals(this.f26762l, l4.f26762l) && Objects.equals(this.f26763m, l4.f26763m) && Objects.equals(this.f26764n, l4.f26764n) && Objects.equals(this.f26765o, l4.f26765o) && Objects.equals(this.f26766p, l4.f26766p) && Objects.equals(this.f26768r, l4.f26768r) && Objects.equals(this.f26769s, l4.f26769s) && Objects.equals(this.f26770t, l4.f26770t) && Objects.equals(this.f26771u, l4.f26771u) && Objects.equals(this.f26772v, l4.f26772v) && Objects.equals(this.f26773w, l4.f26773w) && Objects.equals(this.f26774x, l4.f26774x) && Objects.equals(this.f26775y, l4.f26775y) && Objects.equals(this.f26776z, l4.f26776z) && Objects.equals(this.f26743A, l4.f26743A) && Objects.equals(this.f26744B, l4.f26744B) && Objects.equals(this.f26745C, l4.f26745C) && Objects.equals(this.f26746D, l4.f26746D) && Objects.equals(this.f26747E, l4.f26747E) && Objects.equals(this.f26748F, l4.f26748F) && Objects.equals(this.f26750H, l4.f26750H)) {
            if ((this.f26749G == null) == (l4.f26749G == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object[] objArr = new Object[35];
        objArr[0] = this.f26751a;
        objArr[1] = this.f26752b;
        objArr[2] = this.f26753c;
        objArr[3] = this.f26754d;
        objArr[4] = this.f26755e;
        objArr[5] = this.f26756f;
        objArr[6] = this.f26757g;
        objArr[7] = this.f26758h;
        objArr[8] = null;
        objArr[9] = null;
        objArr[10] = Integer.valueOf(Arrays.hashCode(this.f26759i));
        objArr[11] = this.f26760j;
        objArr[12] = this.f26761k;
        objArr[13] = this.f26762l;
        objArr[14] = this.f26763m;
        objArr[15] = this.f26764n;
        objArr[16] = this.f26765o;
        objArr[17] = this.f26766p;
        objArr[18] = this.f26768r;
        objArr[19] = this.f26769s;
        objArr[20] = this.f26770t;
        objArr[21] = this.f26771u;
        objArr[22] = this.f26772v;
        objArr[23] = this.f26773w;
        objArr[24] = this.f26774x;
        objArr[25] = this.f26775y;
        objArr[26] = this.f26776z;
        objArr[27] = this.f26743A;
        objArr[28] = this.f26744B;
        objArr[29] = this.f26745C;
        objArr[30] = this.f26746D;
        objArr[31] = this.f26747E;
        objArr[32] = this.f26748F;
        objArr[33] = Boolean.valueOf(this.f26749G == null);
        objArr[34] = this.f26750H;
        return Objects.hash(objArr);
    }
}
