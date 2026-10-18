package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributes f9390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9391b = -1;

    public AudioAttributesImplApi21() {
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i8 = this.f9391b;
        return i8 != -1 ? i8 : AudioAttributesCompat.b(this.f9390a.getFlags(), this.f9390a.getUsage());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f9390a.equals(((AudioAttributesImplApi21) obj).f9390a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9390a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f9390a;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this.f9390a = audioAttributes;
    }
}
