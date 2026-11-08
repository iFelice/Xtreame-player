package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final SparseIntArray f31667n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f31668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f31669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f31670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f31671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f31672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f31673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f31674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f31675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f31676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f31677j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f31678k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f31679l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f31680m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f31667n = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
        sparseIntArray.append(11, 12);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.f31695i);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            switch (f31667n.get(index)) {
                case 1:
                    this.f31668a = typedArrayObtainStyledAttributes.getFloat(index, this.f31668a);
                    break;
                case 2:
                    this.f31669b = typedArrayObtainStyledAttributes.getFloat(index, this.f31669b);
                    break;
                case 3:
                    this.f31670c = typedArrayObtainStyledAttributes.getFloat(index, this.f31670c);
                    break;
                case 4:
                    this.f31671d = typedArrayObtainStyledAttributes.getFloat(index, this.f31671d);
                    break;
                case 5:
                    this.f31672e = typedArrayObtainStyledAttributes.getFloat(index, this.f31672e);
                    break;
                case 6:
                    this.f31673f = typedArrayObtainStyledAttributes.getDimension(index, this.f31673f);
                    break;
                case 7:
                    this.f31674g = typedArrayObtainStyledAttributes.getDimension(index, this.f31674g);
                    break;
                case 8:
                    this.f31676i = typedArrayObtainStyledAttributes.getDimension(index, this.f31676i);
                    break;
                case 9:
                    this.f31677j = typedArrayObtainStyledAttributes.getDimension(index, this.f31677j);
                    break;
                case 10:
                    this.f31678k = typedArrayObtainStyledAttributes.getDimension(index, this.f31678k);
                    break;
                case 11:
                    this.f31679l = true;
                    this.f31680m = typedArrayObtainStyledAttributes.getDimension(index, this.f31680m);
                    break;
                case 12:
                    this.f31675h = o.e(typedArrayObtainStyledAttributes, index, this.f31675h);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
