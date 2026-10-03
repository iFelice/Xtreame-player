package V;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class g extends U4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final TextView f7004G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final e f7005H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f7006I;

    public g(TextView textView) {
        super(10);
        this.f7004G = textView;
        this.f7006I = true;
        this.f7005H = new e(textView);
    }

    @Override // U4.b
    public final InputFilter[] W(InputFilter[] inputFilterArr) {
        if (!this.f7006I) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i8 = 0; i8 < inputFilterArr.length; i8++) {
                InputFilter inputFilter = inputFilterArr[i8];
                if (inputFilter instanceof e) {
                    sparseArray.put(i8, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                if (sparseArray.indexOfKey(i10) < 0) {
                    inputFilterArr2[i9] = inputFilterArr[i10];
                    i9++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i11 = 0;
        while (true) {
            e eVar = this.f7005H;
            if (i11 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = eVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i11] == eVar) {
                return inputFilterArr;
            }
            i11++;
        }
    }

    @Override // U4.b
    public final boolean d0() {
        return this.f7006I;
    }

    @Override // U4.b
    public final void f0(boolean z7) {
        if (z7) {
            TextView textView = this.f7004G;
            textView.setTransformationMethod(j0(textView.getTransformationMethod()));
        }
    }

    @Override // U4.b
    public final void g0(boolean z7) {
        this.f7006I = z7;
        TextView textView = this.f7004G;
        textView.setTransformationMethod(j0(textView.getTransformationMethod()));
        textView.setFilters(W(textView.getFilters()));
    }

    @Override // U4.b
    public final TransformationMethod j0(TransformationMethod transformationMethod) {
        if (this.f7006I) {
            return ((transformationMethod instanceof j) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new j(transformationMethod);
        }
        return transformationMethod instanceof j ? ((j) transformationMethod).f7011a : transformationMethod;
    }
}
