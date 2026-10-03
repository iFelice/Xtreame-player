package androidx.media3.extractor.metadata.flac;

import com.google.protobuf.U2;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p094m0.O;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class PictureFrame implements M {
    public final int colors;
    public final int depth;
    public final String description;
    public final int height;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;
    public final int width;

    public PictureFrame(int i8, String str, String str2, int i9, int i10, int i11, int i12, byte[] bArr) {
        this.pictureType = i8;
        this.mimeType = str;
        this.description = str2;
        this.width = i9;
        this.height = i10;
        this.depth = i11;
        this.colors = i12;
        this.pictureData = bArr;
    }

    public static PictureFrame fromPictureBlock(E e8) {
        int iL = e8.l();
        String strP = O.p(e8.x(e8.l(), StandardCharsets.US_ASCII));
        String strX = e8.x(e8.l(), StandardCharsets.UTF_8);
        int iL2 = e8.l();
        int iL3 = e8.l();
        int iL4 = e8.l();
        int iL5 = e8.l();
        int iL6 = e8.l();
        byte[] bArr = new byte[iL6];
        e8.j(0, bArr, iL6);
        return new PictureFrame(iL, strP, strX, iL2, iL3, iL4, iL5, bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        return this.pictureType == pictureFrame.pictureType && this.mimeType.equals(pictureFrame.mimeType) && this.description.equals(pictureFrame.description) && this.width == pictureFrame.width && this.height == pictureFrame.height && this.depth == pictureFrame.depth && this.colors == pictureFrame.colors && Arrays.equals(this.pictureData, pictureFrame.pictureData);
    }

    @Override // p094m0.M
    public /* bridge */ /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public /* bridge */ /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.pictureData) + ((((((((U2.e(this.description, U2.e(this.mimeType, (527 + this.pictureType) * 31, 31), 31) + this.width) * 31) + this.height) * 31) + this.depth) * 31) + this.colors) * 31);
    }

    @Override // p094m0.M
    public void populateMediaMetadata(K k8) {
        k8.a(this.pictureType, this.pictureData);
    }

    public String toString() {
        return "Picture: mimeType=" + this.mimeType + ", description=" + this.description;
    }
}
