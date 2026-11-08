package L;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f4599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextDirectionHeuristic f4600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4602d;

    public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i8, int i9) {
        if (Build.VERSION.SDK_INT >= 29) {
            E2.a.m(textPaint).setBreakStrategy(i8).setHyphenationFrequency(i9).setTextDirection(textDirectionHeuristic).build();
        }
        this.f4599a = textPaint;
        this.f4600b = textDirectionHeuristic;
        this.f4601c = i8;
        this.f4602d = i9;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    /* JADX WARN: Code duplicated, block: B:16:0x0022  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    public final boolean equals(Object obj) {
        TextPaint textPaint;
        float textScaleX;
        TextPaint textPaint2;
        boolean z7;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 23) {
            if (this.f4601c == aVar.f4601c && this.f4602d == aVar.f4602d) {
                textPaint = this.f4599a;
                if (textPaint.getTextSize() != aVar.f4599a.getTextSize()) {
                    z7 = false;
                } else {
                    textScaleX = textPaint.getTextScaleX();
                    textPaint2 = aVar.f4599a;
                    if (textScaleX != textPaint2.getTextScaleX() && textPaint.getTextSkewX() == textPaint2.getTextSkewX() && textPaint.getLetterSpacing() == textPaint2.getLetterSpacing() && TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) && textPaint.getFlags() == textPaint2.getFlags() && (i8 < 24 ? textPaint.getTextLocale().equals(textPaint2.getTextLocale()) : textPaint.getTextLocales().equals(textPaint2.getTextLocales())) && (textPaint.getTypeface() != null ? textPaint.getTypeface().equals(textPaint2.getTypeface()) : textPaint2.getTypeface() == null)) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                }
            } else {
                z7 = false;
            }
        } else {
            textPaint = this.f4599a;
            if (textPaint.getTextSize() != aVar.f4599a.getTextSize()) {
                z7 = false;
            } else {
                textScaleX = textPaint.getTextScaleX();
                textPaint2 = aVar.f4599a;
                if (textScaleX != textPaint2.getTextScaleX()) {
                    z7 = false;
                } else {
                    z7 = true;
                }
            }
        }
        return z7 && this.f4600b == aVar.f4600b;
    }

    public final int hashCode() {
        TextDirectionHeuristic textDirectionHeuristic = this.f4600b;
        int i8 = Build.VERSION.SDK_INT;
        int i9 = this.f4602d;
        int i10 = this.f4601c;
        TextPaint textPaint = this.f4599a;
        return i8 >= 24 ? Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i10), Integer.valueOf(i9)) : Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i10), Integer.valueOf(i9));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f4599a;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        int i8 = Build.VERSION.SDK_INT;
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        if (i8 >= 24) {
            sb.append(", textLocale=" + textPaint.getTextLocales());
        } else {
            sb.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb.append(", typeface=" + textPaint.getTypeface());
        if (i8 >= 26) {
            sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
        }
        sb.append(", textDir=" + this.f4600b);
        sb.append(", breakStrategy=" + this.f4601c);
        sb.append(", hyphenationFrequency=" + this.f4602d);
        sb.append("}");
        return sb.toString();
    }

    public a(PrecomputedText.Params params) {
        this.f4599a = params.getTextPaint();
        this.f4600b = params.getTextDirection();
        this.f4601c = params.getBreakStrategy();
        this.f4602d = params.getHyphenationFrequency();
    }
}
