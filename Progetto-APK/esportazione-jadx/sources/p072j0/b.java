package p072j0;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi26;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public final class b extends S {
    @Override // p039f.S, p072j0.a
    public final AudioAttributesImpl build() {
        return new AudioAttributesImplApi26(((AudioAttributes.Builder) this.f24988H).build());
    }
}
