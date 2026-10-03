package U;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class c implements TextWatcher, SpanWatcher {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f6623G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicInteger f6624H = new AtomicInteger(0);

    public c(Object obj) {
        this.f6623G = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f6623G).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        ((TextWatcher) this.f6623G).beforeTextChanged(charSequence, i8, i9, i10);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i8, int i9) {
        this.f6624H.get();
        ((SpanWatcher) this.f6623G).onSpanAdded(spannable, obj, i8, i9);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0014 A[PHI: r11
      0x0014: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:3:0x0009, B:7:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.text.SpanWatcher
    public final void onSpanChanged(Spannable spannable, Object obj, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        this.f6624H.get();
        if (Build.VERSION.SDK_INT >= 28) {
            i12 = i8;
            i13 = i10;
        } else {
            if (i8 > i9) {
                i8 = 0;
            }
            if (i10 > i11) {
                i12 = i8;
                i13 = 0;
            } else {
                i12 = i8;
                i13 = i10;
            }
        }
        ((SpanWatcher) this.f6623G).onSpanChanged(spannable, obj, i12, i9, i13, i11);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i8, int i9) {
        this.f6624H.get();
        ((SpanWatcher) this.f6623G).onSpanRemoved(spannable, obj, i8, i9);
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        ((TextWatcher) this.f6623G).onTextChanged(charSequence, i8, i9, i10);
    }
}
