package U;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class d extends SpannableStringBuilder {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Class f6625G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f6626H;

    public d(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f6626H = new ArrayList();
        AbstractC3164b.g(cls, "watcherClass cannot be null");
        this.f6625G = cls;
    }

    public final c a(Object obj) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f6626H;
            if (i8 >= arrayList.size()) {
                return null;
            }
            c cVar = (c) arrayList.get(i8);
            if (cVar.f6623G == obj) {
                return cVar;
            }
            i8++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final boolean b(Object obj) {
        if (obj != null) {
            if (this.f6625G == obj.getClass()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i8, int i9) {
        super.delete(i8, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        c cVarA;
        if (b(obj) && (cVarA = a(obj)) != null) {
            obj = cVarA;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        c cVarA;
        if (b(obj) && (cVarA = a(obj)) != null) {
            obj = cVarA;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        c cVarA;
        if (b(obj) && (cVarA = a(obj)) != null) {
            obj = cVarA;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i8, int i9, Class cls) {
        if (this.f6625G != cls) {
            return super.getSpans(i8, i9, cls);
        }
        c[] cVarArr = (c[]) super.getSpans(i8, i9, c.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, cVarArr.length);
        for (int i10 = 0; i10 < cVarArr.length; i10++) {
            objArr[i10] = cVarArr[i10].f6623G;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i8, CharSequence charSequence) {
        super.insert(i8, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i8, int i9, Class cls) {
        if (cls == null || this.f6625G == cls) {
            cls = c.class;
        }
        return super.nextSpanTransition(i8, i9, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        c cVarA;
        if (b(obj)) {
            cVarA = a(obj);
            if (cVarA != null) {
                obj = cVarA;
            }
        } else {
            cVarA = null;
        }
        super.removeSpan(obj);
        if (cVarA != null) {
            this.f6626H.remove(cVarA);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i8, int i9, CharSequence charSequence) {
        ArrayList arrayList;
        int i10 = 0;
        while (true) {
            arrayList = this.f6626H;
            if (i10 >= arrayList.size()) {
                break;
            }
            ((c) arrayList.get(i10)).f6624H.incrementAndGet();
            i10++;
        }
        super.replace(i8, i9, charSequence);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            ((c) arrayList.get(i11)).f6624H.decrementAndGet();
        }
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i8, int i9, int i10) {
        if (b(obj)) {
            c cVar = new c(obj);
            this.f6626H.add(cVar);
            obj = cVar;
        }
        super.setSpan(obj, i8, i9, i10);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i8, int i9) {
        return new d(this.f6625G, this, i8, i9);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i8, int i9) {
        super.delete(i8, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i8, CharSequence charSequence) {
        super.insert(i8, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i8, CharSequence charSequence, int i9, int i10) {
        super.insert(i8, charSequence, i9, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i8, CharSequence charSequence, int i9, int i10) {
        super.insert(i8, charSequence, i9, i10);
        return this;
    }

    public d(Class cls, CharSequence charSequence, int i8, int i9) {
        super(charSequence, i8, i9);
        this.f6626H = new ArrayList();
        AbstractC3164b.g(cls, "watcherClass cannot be null");
        this.f6625G = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i8, int i9) {
        super.append(charSequence, i8, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i8, int i9) {
        super.append(charSequence, i8, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i8, int i9) {
        super.append(charSequence, i8, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i8) {
        super.append(charSequence, obj, i8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i8, int i9, CharSequence charSequence, int i10, int i11) {
        ArrayList arrayList;
        int i12 = 0;
        while (true) {
            arrayList = this.f6626H;
            if (i12 >= arrayList.size()) {
                break;
            }
            ((c) arrayList.get(i12)).f6624H.incrementAndGet();
            i12++;
        }
        super.replace(i8, i9, charSequence, i10, i11);
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            ((c) arrayList.get(i13)).f6624H.decrementAndGet();
        }
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i8, int i9, CharSequence charSequence) {
        replace(i8, i9, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i8, int i9, CharSequence charSequence, int i10, int i11) {
        replace(i8, i9, charSequence, i10, i11);
        return this;
    }
}
