.class public final synthetic LC0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LC0/b;

.field public final synthetic I:LO0/u;


# direct methods
.method public synthetic constructor <init>(LC0/b;LO0/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LC0/m;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LC0/m;->H:LC0/b;

    .line 7
    .line 8
    iput-object p2, p0, LC0/m;->I:LO0/u;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, LC0/m;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, LC0/F;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, LC0/m;->H:LC0/b;

    .line 18
    .line 19
    iget-object v1, v0, LC0/b;->d:LO0/y;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, LF/d;

    .line 25
    .line 26
    iget-object v2, p0, LC0/m;->I:LO0/u;

    .line 27
    .line 28
    iget-object v3, v2, LO0/u;->c:Lm0/t;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v4, v0, LC0/b;->d:LO0/y;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, LC0/b;->b:Lm0/f0;

    .line 39
    .line 40
    iget-object v5, p1, LC0/F;->c:LC0/C;

    .line 41
    .line 42
    invoke-virtual {v5, v0, v4}, LC0/C;->d(Lm0/f0;LO0/y;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v4, v2, LO0/u;->d:I

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    invoke-direct {v1, v0, v4, v5, v3}, LF/d;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget v0, v2, LO0/u;->b:I

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    if-eq v0, v5, :cond_2

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    if-eq v0, v2, :cond_3

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    if-eq v0, v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iput-object v1, p1, LC0/F;->r:LF/d;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iput-object v1, p1, LC0/F;->q:LF/d;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iput-object v1, p1, LC0/F;->p:LF/d;

    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
