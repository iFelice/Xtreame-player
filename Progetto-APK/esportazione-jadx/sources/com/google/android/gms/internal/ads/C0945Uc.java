package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.IOException;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0945Uc extends M3.a {
    public static final Parcelable.Creator<C0945Uc> CREATOR = new C2350zc(5);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ParcelFileDescriptor f16848G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Parcelable f16849H = null;

    public C0945Uc(ParcelFileDescriptor parcelFileDescriptor) {
        this.f16848G = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        if (this.f16848G == null) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                this.f16849H.writeToParcel(parcelObtain, 0);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1]);
                    try {
                        AbstractC1988se.f20906a.execute(new RunnableC0755Ha(12, autoCloseOutputStream, bArrMarshall));
                        parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                    } catch (IOException e8) {
                        e = e8;
                        p120p3.h.e("Error transporting the ad response", e);
                        p083k3.l.f25980A.f25987g.i("LargeParcelTeleporter.pipeData.2", e);
                        AbstractC2987b.e(autoCloseOutputStream);
                    }
                } catch (IOException e9) {
                    e = e9;
                    autoCloseOutputStream = null;
                }
                this.f16848G = parcelFileDescriptor;
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f16848G, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
