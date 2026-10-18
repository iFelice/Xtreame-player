package p088l1;

import com.google.protobuf.U2;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class a implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26437b;

    public a(String str, String str2) {
        this.f26436a = k.j0(str);
        this.f26437b = str2;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f26436a.equals(aVar.f26436a) && this.f26437b.equals(aVar.f26437b);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        return this.f26437b.hashCode() + U2.e(this.f26436a, 527, 31);
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        return "VC: " + this.f26436a + "=" + this.f26437b;
    }

    @Override // p094m0.M
    public final /* bridge */ /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* bridge */ /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // p094m0.M
    public final void populateMediaMetadata(K k8) {
        String str = this.f26436a;
        str.getClass();
        byte b8 = -1;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    b8 = 0;
                }
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    b8 = 1;
                }
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    b8 = 2;
                }
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    b8 = 3;
                }
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    b8 = 4;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    b8 = 5;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    b8 = 6;
                }
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    b8 = 7;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    b8 = 8;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    b8 = 9;
                }
                break;
        }
        String str2 = this.f26437b;
        switch (b8) {
            case 0:
                Integer numL0 = k.l0(str2);
                if (numL0 != null) {
                    k8.f26728m = numL0;
                }
                break;
            case 1:
                Integer numL1 = k.l0(str2);
                if (numL1 != null) {
                    k8.f26709A = numL1;
                }
                break;
            case 2:
                Integer numL2 = k.l0(str2);
                if (numL2 != null) {
                    k8.f26727l = numL2;
                }
                break;
            case 3:
                k8.f26718c = str2;
                break;
            case 4:
                k8.f26710B = str2;
                break;
            case 5:
                k8.f26716a = str2;
                break;
            case 6:
                k8.f26722g = str2;
                break;
            case 7:
                Integer numL3 = k.l0(str2);
                if (numL3 != null) {
                    k8.f26741z = numL3;
                }
                break;
            case 8:
                k8.f26719d = str2;
                break;
            case 9:
                k8.f26717b = str2;
                break;
        }
    }
}
