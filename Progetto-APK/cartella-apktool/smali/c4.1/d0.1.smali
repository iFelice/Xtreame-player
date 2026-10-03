.class public final synthetic Lc4/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc4/f0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lc4/f0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/d0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/d0;->b:Lc4/f0;

    .line 7
    .line 8
    iput-object p2, p0, Lc4/d0;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lc4/d0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/d0;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lc4/d0;->b:Lc4/f0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lc4/q1;->H:Lc4/A1;

    .line 11
    .line 12
    iget-object v0, v0, Lc4/A1;->I:Lc4/o;

    .line 13
    .line 14
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc4/o;->k0(Ljava/lang/String;)Lc4/P;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "platform"

    .line 22
    .line 23
    const-string v4, "android"

    .line 24
    .line 25
    const-string v5, "package_name"

    .line 26
    .line 27
    invoke-static {v3, v4, v5, v1}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lc4/l0;

    .line 34
    .line 35
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 36
    .line 37
    invoke-virtual {v2}, Lc4/h;->u()J

    .line 38
    .line 39
    .line 40
    const-wide/32 v2, 0x1d0da

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "gmp_version"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lc4/P;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    const-string v3, "app_version"

    .line 61
    .line 62
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0}, Lc4/P;->S()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "app_version_int"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lc4/P;->T()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "dynamite_version"

    .line 87
    .line 88
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_1
    return-object v1

    .line 92
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/V1;

    .line 93
    .line 94
    new-instance v3, Lc4/d0;

    .line 95
    .line 96
    const/4 v4, 0x2

    .line 97
    invoke-direct {v3, v2, v1, v4}, Lc4/d0;-><init>(Lc4/f0;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/V1;-><init>(Lc4/d0;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/K2;

    .line 105
    .line 106
    new-instance v3, LF/i;

    .line 107
    .line 108
    invoke-direct {v3, v2, v1}, LF/i;-><init>(Lc4/f0;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/K2;-><init>(LF/i;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
