.class final Lcom/google/ads/interactivemedia/v3/internal/zzjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zznv;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzok;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjq;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzim;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzjs;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjb;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zznv;Lcom/google/ads/interactivemedia/v3/internal/zzok;Lcom/google/ads/interactivemedia/v3/internal/zzjq;Lcom/google/ads/interactivemedia/v3/internal/zzjc;Lcom/google/ads/interactivemedia/v3/internal/zzim;Lcom/google/ads/interactivemedia/v3/internal/zzjs;Lcom/google/ads/interactivemedia/v3/internal/zzjk;Lcom/google/ads/interactivemedia/v3/internal/zzjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzok;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjq;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzim;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzjs;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjb;

    return-void
.end method

.method private final zze()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznv;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzok;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzok;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzbp;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "v"

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznv;->zzd()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznv;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznv;->zzg()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "gms"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "int"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zza()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "up"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/Throwable;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "t"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzc()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "tcq"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzg()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "tpq"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzd()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "tcv"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzh()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "tpv"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzb()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v2, "tchv"

    .line 145
    .line 146
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zzf()J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "tphv"

    .line 160
    .line 161
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zza()J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "tcc"

    .line 175
    .line 176
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzjk;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjk;->zze()J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v2, "tpc"

    .line 190
    .line 191
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjq;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zze()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjq;->zza()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "lts"

    .line 16
    .line 17
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public final zzb()Ljava/util/Map;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zze()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzok;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzok;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzbp;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznv;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zznv;->zzh()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "gai"

    .line 22
    .line 23
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzf()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "did"

    .line 31
    .line 32
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzal()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "dst"

    .line 46
    .line 47
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzai()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "doo"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzim;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzim;->zza()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "nt"

    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzjs;

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjs;->zzc()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "vs"

    .line 93
    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzjs;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjs;->zzb()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "vf"

    .line 108
    .line 109
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_1
    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjb;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zze()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "vst"

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjb;->zza()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v1
.end method

.method public final zzd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzjq;->zzd(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
