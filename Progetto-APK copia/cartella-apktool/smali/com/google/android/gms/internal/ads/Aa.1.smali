.class public final synthetic Lcom/google/android/gms/internal/ads/Aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ue;
.implements Lcom/google/android/gms/internal/ads/ve;
.implements Lcom/google/android/gms/internal/ads/Na;
.implements Lcom/google/android/gms/internal/ads/Oa;
.implements Lcom/google/android/gms/internal/ads/Cc;
.implements Lp3/i;
.implements Lcom/google/android/gms/internal/ads/O;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lcom/google/android/gms/internal/ads/rk;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    return-void
.end method

.method public static final e(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/L;
    .locals 7

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 p2, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/A1;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/A1;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/f1;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/f1;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/x1;

    .line 22
    .line 23
    sget-object v4, Lcom/google/android/gms/internal/ads/V1;->o:Lcom/google/android/gms/internal/ads/kH;

    .line 24
    .line 25
    sget-object v5, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 26
    .line 27
    const/16 v6, 0x20

    .line 28
    .line 29
    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/x1;-><init>(Lcom/google/android/gms/internal/ads/kH;ILcom/google/android/gms/internal/ads/PA;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    new-array v4, v4, [Lcom/google/android/gms/internal/ads/L;

    .line 34
    .line 35
    aput-object v1, v4, v0

    .line 36
    .line 37
    aput-object v2, v4, p2

    .line 38
    .line 39
    aput-object v3, v4, p1

    .line 40
    .line 41
    return-object v4

    .line 42
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/gms/internal/ads/A1;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/A1;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/google/android/gms/internal/ads/f1;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/f1;-><init>()V

    .line 52
    .line 53
    .line 54
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/L;

    .line 55
    .line 56
    aput-object v1, p1, v0

    .line 57
    .line 58
    aput-object v2, p1, p2

    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-object p1

    .line 7
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Pa;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/Pa;->a:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ud;

    if-eqz v2, :cond_1

    .line 3
    move-object p1, v1

    check-cast p1, Lcom/google/android/gms/internal/ads/ud;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ud;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public final zza()V
    .locals 0

    .line 5
    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Aa;->G:I

    sparse-switch v0, :sswitch_data_0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/Aj;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aj;->zzr()V

    return-void

    .line 8
    :sswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/yj;

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/yj;->d(Ll3/z0;)V

    return-void

    .line 11
    :sswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/tj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tj;->zzb()V

    return-void

    .line 12
    :sswitch_2
    check-cast p1, Ll3/a;

    .line 13
    invoke-interface {p1}, Ll3/a;->x()V

    return-void

    .line 14
    :sswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/La;

    .line 15
    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/Ma;

    .line 17
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Ma;->H:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/N9;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unregistering eventhandler: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo3/I;->k(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/N9;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Ma;->G:Lcom/google/android/gms/internal/ads/La;

    invoke-interface {v4, v3, v2}, Lcom/google/android/gms/internal/ads/La;->z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/xi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xi;->zzr()V

    return-void
.end method
