.class public final Lcom/google/android/gms/internal/ads/Wt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Wt;->a:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Wt;->a:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Wt;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x2f

    return v0

    :pswitch_1
    const/16 v0, 0x34

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()LD4/b;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget v3, p0, Lcom/google/android/gms/internal/ads/Wt;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/Es;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Es;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    const/4 v3, 0x0

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->q5:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 28
    .line 29
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-array v2, v2, [LD4/b;

    .line 52
    .line 53
    aput-object v4, v2, v1

    .line 54
    .line 55
    aput-object v3, v2, v0

    .line 56
    .line 57
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v5, Lcom/google/android/gms/internal/ads/Ap;

    .line 62
    .line 63
    invoke-direct {v5, v4, v3, v0}, Lcom/google/android/gms/internal/ads/Ap;-><init>(LD4/b;Lcom/google/android/gms/internal/ads/fC;I)V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 67
    .line 68
    new-instance v4, Lcom/google/android/gms/internal/ads/WB;

    .line 69
    .line 70
    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/gms/internal/ads/MB;-><init>(Lcom/google/android/gms/internal/ads/uA;ZZ)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/google/android/gms/internal/ads/UB;

    .line 74
    .line 75
    invoke-direct {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/UB;-><init>(Lcom/google/android/gms/internal/ads/WB;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/WB;->V:Lcom/google/android/gms/internal/ads/UB;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/MB;->x()V

    .line 81
    .line 82
    .line 83
    return-object v4

    .line 84
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Es;

    .line 85
    .line 86
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Es;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
