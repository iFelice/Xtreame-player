package androidx.media;

import Z1.a;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f9392a = aVar.f(audioAttributesImplBase.f9392a, 1);
        audioAttributesImplBase.f9393b = aVar.f(audioAttributesImplBase.f9393b, 2);
        audioAttributesImplBase.f9394c = aVar.f(audioAttributesImplBase.f9394c, 3);
        audioAttributesImplBase.f9395d = aVar.f(audioAttributesImplBase.f9395d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        aVar.getClass();
        aVar.j(audioAttributesImplBase.f9392a, 1);
        aVar.j(audioAttributesImplBase.f9393b, 2);
        aVar.j(audioAttributesImplBase.f9394c, 3);
        aVar.j(audioAttributesImplBase.f9395d, 4);
    }
}
