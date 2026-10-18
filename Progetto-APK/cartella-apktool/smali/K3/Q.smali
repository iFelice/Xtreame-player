.class public final LK3/Q;
.super LK3/P;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK3/I;Lg4/i;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, LK3/Q;->c:I

    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0, p2}, LK3/P;-><init>(ILg4/i;)V

    iput-object p1, p0, LK3/Q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LK3/i;Lg4/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LK3/Q;->c:I

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p2}, LK3/P;-><init>(ILg4/i;)V

    iput-object p1, p0, LK3/Q;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/internal/atv_ads_framework/x0;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(LK3/z;)Z
    .locals 2

    .line 1
    iget v0, p0, LK3/Q;->c:I

    .line 2
    .line 3
    iget-object v1, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, LK3/z;->L:Ljava/util/HashMap;

    .line 9
    .line 10
    check-cast v1, LK3/i;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, LK3/I;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, LK3/I;->a:LK3/m;

    .line 21
    .line 22
    iget-boolean p1, p1, LK3/m;->c:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1

    .line 30
    :pswitch_0
    check-cast v1, LK3/I;

    .line 31
    .line 32
    iget-object p1, v1, LK3/I;->a:LK3/m;

    .line 33
    .line 34
    iget-boolean p1, p1, LK3/m;->c:Z

    .line 35
    .line 36
    return p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(LK3/z;)[LJ3/d;
    .locals 2

    .line 1
    iget v0, p0, LK3/Q;->c:I

    .line 2
    .line 3
    iget-object v1, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, LK3/z;->L:Ljava/util/HashMap;

    .line 9
    .line 10
    check-cast v1, LK3/i;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, LK3/I;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p1, LK3/I;->a:LK3/m;

    .line 23
    .line 24
    iget-object p1, p1, LK3/m;->b:[LJ3/d;

    .line 25
    .line 26
    :goto_0
    return-object p1

    .line 27
    :pswitch_0
    check-cast v1, LK3/I;

    .line 28
    .line 29
    iget-object p1, v1, LK3/I;->a:LK3/m;

    .line 30
    .line 31
    iget-object p1, p1, LK3/m;->b:[LJ3/d;

    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(LK3/z;)V
    .locals 3

    .line 1
    iget v0, p0, LK3/Q;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, LK3/z;->L:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v1, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, LK3/i;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, LK3/I;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 21
    .line 22
    iget-object v1, p0, LK3/P;->b:Lg4/i;

    .line 23
    .line 24
    iget-object v2, v0, LK3/I;->b:LK3/t;

    .line 25
    .line 26
    check-cast v2, LK3/L;

    .line 27
    .line 28
    iget-object v2, v2, LK3/L;->b:LK3/n;

    .line 29
    .line 30
    iget-object v2, v2, LK3/n;->b:LK3/p;

    .line 31
    .line 32
    invoke-interface {v2, p1, v1}, LK3/p;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, LK3/I;->a:LK3/m;

    .line 36
    .line 37
    iget-object p1, p1, LK3/m;->a:LK3/j;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, LK3/j;->b:LK3/i;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, LK3/P;->b:Lg4/i;

    .line 44
    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lg4/i;->d(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, LK3/I;

    .line 54
    .line 55
    iget-object v0, v0, LK3/I;->a:LK3/m;

    .line 56
    .line 57
    iget-object v1, p1, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 58
    .line 59
    iget-object v2, p0, LK3/P;->b:Lg4/i;

    .line 60
    .line 61
    check-cast v0, LK3/K;

    .line 62
    .line 63
    iget-object v0, v0, LK3/K;->e:LK3/n;

    .line 64
    .line 65
    iget-object v0, v0, LK3/n;->a:LK3/p;

    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, LK3/p;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, LK3/I;

    .line 73
    .line 74
    iget-object v0, v0, LK3/I;->a:LK3/m;

    .line 75
    .line 76
    iget-object v0, v0, LK3/m;->a:LK3/j;

    .line 77
    .line 78
    iget-object v0, v0, LK3/j;->b:LK3/i;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object p1, p1, LK3/z;->L:Ljava/util/HashMap;

    .line 83
    .line 84
    iget-object v1, p0, LK3/Q;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, LK3/I;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
