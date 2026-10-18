package y2;

import java.io.IOException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class y implements Appendable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Appendable f31410G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f31411H = true;

    public y(Appendable appendable) {
        this.f31410G = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i8, int i9) throws IOException {
        if (charSequence == null) {
            charSequence = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        boolean z7 = this.f31411H;
        Appendable appendable = this.f31410G;
        boolean z8 = false;
        if (z7) {
            this.f31411H = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i9 - 1) == '\n') {
            z8 = true;
        }
        this.f31411H = z8;
        appendable.append(charSequence, i8, i9);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c8) throws IOException {
        boolean z7 = this.f31411H;
        Appendable appendable = this.f31410G;
        if (z7) {
            this.f31411H = false;
            appendable.append("  ");
        }
        this.f31411H = c8 == '\n';
        appendable.append(c8);
        return this;
    }
}
