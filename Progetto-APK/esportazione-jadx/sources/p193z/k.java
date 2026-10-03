package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final SparseIntArray f31585p0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f31586A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public float f31587B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f31588C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f31589D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f31590E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f31591F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f31592G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31593H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f31594I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f31595J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f31596K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f31597L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f31598M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f31599N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f31600O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f31601P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f31602Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f31603R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f31604S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public float f31605T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public float f31606U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f31607V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f31608W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f31609X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f31610Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f31611Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f31612a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f31613a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31614b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f31615b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31616c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f31617c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31618d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f31619d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31620e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public float f31621e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f31622f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f31623f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f31624g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f31625g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f31626h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f31627h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31628i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int[] f31629i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f31630j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f31631j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f31632k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f31633k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f31634l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f31635l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f31636m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f31637m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f31638n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f31639n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f31640o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f31641o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f31642p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f31643q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f31644r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f31645s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f31646t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f31647u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f31648v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f31649w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f31650x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f31651y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f31652z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f31585p0 = sparseIntArray;
        sparseIntArray.append(43, 24);
        sparseIntArray.append(44, 25);
        sparseIntArray.append(46, 28);
        sparseIntArray.append(47, 29);
        sparseIntArray.append(52, 35);
        sparseIntArray.append(51, 34);
        sparseIntArray.append(24, 4);
        sparseIntArray.append(23, 3);
        sparseIntArray.append(19, 1);
        sparseIntArray.append(61, 6);
        sparseIntArray.append(62, 7);
        sparseIntArray.append(31, 17);
        sparseIntArray.append(32, 18);
        sparseIntArray.append(33, 19);
        sparseIntArray.append(15, 90);
        sparseIntArray.append(0, 26);
        sparseIntArray.append(48, 31);
        sparseIntArray.append(49, 32);
        sparseIntArray.append(30, 10);
        sparseIntArray.append(29, 9);
        sparseIntArray.append(66, 13);
        sparseIntArray.append(69, 16);
        sparseIntArray.append(67, 14);
        sparseIntArray.append(64, 11);
        sparseIntArray.append(68, 15);
        sparseIntArray.append(65, 12);
        sparseIntArray.append(55, 38);
        sparseIntArray.append(41, 37);
        sparseIntArray.append(40, 39);
        sparseIntArray.append(54, 40);
        sparseIntArray.append(39, 20);
        sparseIntArray.append(53, 36);
        sparseIntArray.append(28, 5);
        sparseIntArray.append(42, 91);
        sparseIntArray.append(50, 91);
        sparseIntArray.append(45, 91);
        sparseIntArray.append(22, 91);
        sparseIntArray.append(18, 91);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(5, 27);
        sparseIntArray.append(7, 30);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(4, 33);
        sparseIntArray.append(6, 2);
        sparseIntArray.append(1, 22);
        sparseIntArray.append(2, 21);
        sparseIntArray.append(56, 41);
        sparseIntArray.append(34, 42);
        sparseIntArray.append(17, 87);
        sparseIntArray.append(16, 88);
        sparseIntArray.append(71, 76);
        sparseIntArray.append(25, 61);
        sparseIntArray.append(27, 62);
        sparseIntArray.append(26, 63);
        sparseIntArray.append(60, 69);
        sparseIntArray.append(38, 70);
        sparseIntArray.append(12, 71);
        sparseIntArray.append(10, 72);
        sparseIntArray.append(11, 73);
        sparseIntArray.append(13, 74);
        sparseIntArray.append(9, 75);
        sparseIntArray.append(58, 84);
        sparseIntArray.append(59, 86);
        sparseIntArray.append(58, 83);
        sparseIntArray.append(37, 85);
        sparseIntArray.append(56, 87);
        sparseIntArray.append(34, 88);
        sparseIntArray.append(91, 89);
        sparseIntArray.append(15, 90);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.f31691e);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            SparseIntArray sparseIntArray = f31585p0;
            int i9 = sparseIntArray.get(index);
            switch (i9) {
                case 1:
                    this.f31642p = o.e(typedArrayObtainStyledAttributes, index, this.f31642p);
                    break;
                case 2:
                    this.f31594I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31594I);
                    break;
                case 3:
                    this.f31640o = o.e(typedArrayObtainStyledAttributes, index, this.f31640o);
                    break;
                case 4:
                    this.f31638n = o.e(typedArrayObtainStyledAttributes, index, this.f31638n);
                    break;
                case 5:
                    this.f31651y = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    this.f31588C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f31588C);
                    break;
                case 7:
                    this.f31589D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f31589D);
                    break;
                case 8:
                    this.f31595J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31595J);
                    break;
                case 9:
                    this.f31648v = o.e(typedArrayObtainStyledAttributes, index, this.f31648v);
                    break;
                case 10:
                    this.f31647u = o.e(typedArrayObtainStyledAttributes, index, this.f31647u);
                    break;
                case 11:
                    this.f31601P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31601P);
                    break;
                case 12:
                    this.f31602Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31602Q);
                    break;
                case 13:
                    this.f31598M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31598M);
                    break;
                case 14:
                    this.f31600O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31600O);
                    break;
                case 15:
                    this.f31603R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31603R);
                    break;
                case 16:
                    this.f31599N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31599N);
                    break;
                case 17:
                    this.f31618d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f31618d);
                    break;
                case 18:
                    this.f31620e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f31620e);
                    break;
                case 19:
                    this.f31622f = typedArrayObtainStyledAttributes.getFloat(index, this.f31622f);
                    break;
                case 20:
                    this.f31649w = typedArrayObtainStyledAttributes.getFloat(index, this.f31649w);
                    break;
                case 21:
                    this.f31616c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f31616c);
                    break;
                case 22:
                    this.f31614b = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f31614b);
                    break;
                case 23:
                    this.f31591F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31591F);
                    break;
                case 24:
                    this.f31626h = o.e(typedArrayObtainStyledAttributes, index, this.f31626h);
                    break;
                case 25:
                    this.f31628i = o.e(typedArrayObtainStyledAttributes, index, this.f31628i);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    this.f31590E = typedArrayObtainStyledAttributes.getInt(index, this.f31590E);
                    break;
                case 27:
                    this.f31592G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31592G);
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    this.f31630j = o.e(typedArrayObtainStyledAttributes, index, this.f31630j);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    this.f31632k = o.e(typedArrayObtainStyledAttributes, index, this.f31632k);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    this.f31596K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31596K);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    this.f31645s = o.e(typedArrayObtainStyledAttributes, index, this.f31645s);
                    break;
                case 32:
                    this.f31646t = o.e(typedArrayObtainStyledAttributes, index, this.f31646t);
                    break;
                case 33:
                    this.f31593H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31593H);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    this.f31636m = o.e(typedArrayObtainStyledAttributes, index, this.f31636m);
                    break;
                case 35:
                    this.f31634l = o.e(typedArrayObtainStyledAttributes, index, this.f31634l);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    this.f31650x = typedArrayObtainStyledAttributes.getFloat(index, this.f31650x);
                    break;
                case 37:
                    this.f31606U = typedArrayObtainStyledAttributes.getFloat(index, this.f31606U);
                    break;
                case 38:
                    this.f31605T = typedArrayObtainStyledAttributes.getFloat(index, this.f31605T);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    this.f31607V = typedArrayObtainStyledAttributes.getInt(index, this.f31607V);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    this.f31608W = typedArrayObtainStyledAttributes.getInt(index, this.f31608W);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    o.f(this, typedArrayObtainStyledAttributes, index, 0);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    o.f(this, typedArrayObtainStyledAttributes, index, 1);
                    break;
                default:
                    switch (i9) {
                        case 61:
                            this.f31652z = o.e(typedArrayObtainStyledAttributes, index, this.f31652z);
                            break;
                        case 62:
                            this.f31586A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31586A);
                            break;
                        case 63:
                            this.f31587B = typedArrayObtainStyledAttributes.getFloat(index, this.f31587B);
                            break;
                        default:
                            switch (i9) {
                                case 69:
                                    this.f31619d0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 70:
                                    this.f31621e0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    break;
                                case 72:
                                    this.f31623f0 = typedArrayObtainStyledAttributes.getInt(index, this.f31623f0);
                                    break;
                                case 73:
                                    this.f31625g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31625g0);
                                    break;
                                case 74:
                                    this.f31631j0 = typedArrayObtainStyledAttributes.getString(index);
                                    break;
                                case 75:
                                    this.f31639n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f31639n0);
                                    break;
                                case 76:
                                    this.f31641o0 = typedArrayObtainStyledAttributes.getInt(index, this.f31641o0);
                                    break;
                                case 77:
                                    this.f31643q = o.e(typedArrayObtainStyledAttributes, index, this.f31643q);
                                    break;
                                case 78:
                                    this.f31644r = o.e(typedArrayObtainStyledAttributes, index, this.f31644r);
                                    break;
                                case 79:
                                    this.f31604S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31604S);
                                    break;
                                case 80:
                                    this.f31597L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31597L);
                                    break;
                                case 81:
                                    this.f31609X = typedArrayObtainStyledAttributes.getInt(index, this.f31609X);
                                    break;
                                case 82:
                                    this.f31610Y = typedArrayObtainStyledAttributes.getInt(index, this.f31610Y);
                                    break;
                                case 83:
                                    this.f31613a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31613a0);
                                    break;
                                case 84:
                                    this.f31611Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31611Z);
                                    break;
                                case 85:
                                    this.f31617c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31617c0);
                                    break;
                                case 86:
                                    this.f31615b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f31615b0);
                                    break;
                                case 87:
                                    this.f31635l0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f31635l0);
                                    break;
                                case 88:
                                    this.f31637m0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f31637m0);
                                    break;
                                case 89:
                                    this.f31633k0 = typedArrayObtainStyledAttributes.getString(index);
                                    break;
                                case 90:
                                    this.f31624g = typedArrayObtainStyledAttributes.getBoolean(index, this.f31624g);
                                    break;
                                case 91:
                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                    break;
                                default:
                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
