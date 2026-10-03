.class public final Lcom/google/ads/interactivemedia/v3/impl/zzbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzae;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

.field private final zzb:Landroid/webkit/WebView;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

.field private zzd:Landroid/view/View;

.field private zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Set;

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbi;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzg:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzb:Landroid/webkit/WebView;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 22
    .line 23
    return-void
.end method

.method private final zzh(Ljava/util/List;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/zzcd;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/zzca;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzca;->friendlyObstructions(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/impl/data/zzca;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzca;->build()Lcom/google/ads/interactivemedia/v3/impl/data/zzcd;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

    .line 25
    .line 26
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 27
    .line 28
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->omid:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 29
    .line 30
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->registerFriendlyObstructions:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zze:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbi;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfl;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzc()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfl;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0xe

    .line 23
    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0xf

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfl;->zzc()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 41
    .line 42
    if-nez p1, :cond_5

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzd:Landroid/view/View;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;

    .line 50
    .line 51
    sget-object v0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;

    .line 52
    .line 53
    sget-object v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;->zzb:Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {p1, v0, v1, v1, v2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;Z)Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzb:Landroid/webkit/WebView;

    .line 61
    .line 62
    const-string v1, "Google1"

    .line 63
    .line 64
    const-string v3, "3.35.1"

    .line 65
    .line 66
    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh:Ljava/lang/String;

    .line 71
    .line 72
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzg:Z

    .line 73
    .line 74
    if-eq v2, v4, :cond_2

    .line 75
    .line 76
    const-string v2, "false"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v2, "true"

    .line 80
    .line 81
    :goto_0
    const-string v4, "{ssai:"

    .line 82
    .line 83
    const-string v5, "}"

    .line 84
    .line 85
    invoke-static {v4, v2, v5}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v0, v3, v2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzb(Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;)Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzd:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzd(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 119
    .line 120
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzb(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 141
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh(Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzf()V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzg()Z

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_2
    return-void
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzb(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    aput-object p1, v0, v1

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzd:Landroid/view/View;

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzg:Z

    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzf:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zze()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzh(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfl;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzc()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
