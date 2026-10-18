package androidx.media;

import Z1.a;
import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(a aVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f9390a = (AudioAttributes) aVar.g(audioAttributesImplApi21.f9390a, 1);
        audioAttributesImplApi21.f9391b = aVar.f(audioAttributesImplApi21.f9391b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, a aVar) {
        aVar.getClass();
        aVar.k(audioAttributesImplApi21.f9390a, 1);
        aVar.j(audioAttributesImplApi21.f9391b, 2);
    }
}
