.class public final Lcom/google/android/gms/internal/ads/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/cj;


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/Xu;)LD4/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/gv;->b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/uv;Lcom/google/android/gms/internal/ads/cj;)LD4/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/uv;Lcom/google/android/gms/internal/ads/cj;)LD4/b;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/tv;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/Xu;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Xu;->f(Lcom/google/android/gms/internal/ads/tv;)Lcom/google/android/gms/internal/ads/Dg;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zv;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iget p3, p1, Lcom/google/android/gms/internal/ads/Dg;->a:I

    .line 17
    .line 18
    packed-switch p3, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Dg;->c:Lcom/google/android/gms/internal/ads/zv;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Dg;->c:Lcom/google/android/gms/internal/ads/zv;

    .line 25
    .line 26
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Dg;->b()Lcom/google/android/gms/internal/ads/Qg;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_1

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Dg;->a()Lcom/google/android/gms/internal/ads/Eg;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gv;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cj;->zzb()Lcom/google/android/gms/internal/ads/Li;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/google/android/gms/internal/ads/pw;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Li;->b()Lcom/google/android/gms/internal/ads/Fw;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/Va;

    .line 58
    .line 59
    const/16 v1, 0xe

    .line 60
    .line 61
    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/Va;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/google/android/gms/internal/ads/XB;->G:Lcom/google/android/gms/internal/ads/XB;

    .line 65
    .line 66
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/ads/Sc;

    .line 71
    .line 72
    const/16 v1, 0x9

    .line 73
    .line 74
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gv;->a:Lcom/google/android/gms/internal/ads/cj;

    return-object v0
.end method
