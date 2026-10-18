package p086l;

import U4.b;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import p031e.a;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f26064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final S f26065b;

    public B(TextView textView) {
        this.f26064a = textView;
        this.f26065b = new S(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((b) this.f26065b.f24988H).W(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i8) {
        TypedArray typedArrayObtainStyledAttributes = this.f26064a.getContext().obtainStyledAttributes(attributeSet, a.f24694i, i8, 0);
        try {
            boolean z7 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z7);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z7) {
        ((b) this.f26065b.f24988H).f0(z7);
    }

    public final void d(boolean z7) {
        ((b) this.f26065b.f24988H).g0(z7);
    }
}
