package com.google.ads.interactivemedia.pal;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConsentSettings {

    public static abstract class Builder {
        public abstract Builder allowStorage(Boolean bool);

        public abstract ConsentSettings build();

        public abstract Builder directedForChildOrUnknownAge(Boolean bool);

        public abstract Builder enableCookiesFor3pServerSideAdInsertion(Boolean bool);
    }

    public static Builder builder() {
        zzb zzbVar = new zzb();
        zzbVar.enableCookiesFor3pServerSideAdInsertion(null);
        Boolean bool = Boolean.FALSE;
        zzbVar.allowStorage(bool);
        zzbVar.directedForChildOrUnknownAge(bool);
        return zzbVar;
    }

    public abstract Builder toBuilder();

    public abstract Boolean zza();

    public abstract Boolean zzb();

    public abstract Boolean zzc();
}
