package androidx.media;

import Z1.a;
import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(a aVar) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f9390a = (AudioAttributes) aVar.g(audioAttributesImplApi26.f9390a, 1);
        audioAttributesImplApi26.f9391b = aVar.f(audioAttributesImplApi26.f9391b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, a aVar) {
        aVar.getClass();
        aVar.k(audioAttributesImplApi26.f9390a, 1);
        aVar.j(audioAttributesImplApi26.f9391b, 2);
    }
}
