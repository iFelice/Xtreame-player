package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f31665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f31666d;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.f31693g);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            if (index == 1) {
                this.f31665c = typedArrayObtainStyledAttributes.getFloat(index, this.f31665c);
            } else if (index == 0) {
                int i9 = typedArrayObtainStyledAttributes.getInt(index, this.f31663a);
                this.f31663a = i9;
                this.f31663a = o.f31681d[i9];
            } else if (index == 4) {
                this.f31664b = typedArrayObtainStyledAttributes.getInt(index, this.f31664b);
            } else if (index == 3) {
                this.f31666d = typedArrayObtainStyledAttributes.getFloat(index, this.f31666d);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
