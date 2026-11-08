.class public final Lc4/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc4/J1;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lc4/r0;


# direct methods
.method public synthetic constructor <init>(Lc4/r0;Lc4/J1;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lc4/q0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/q0;->b:Lc4/J1;

    .line 7
    .line 8
    iput-object p3, p0, Lc4/q0;->c:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p1, p0, Lc4/q0;->d:Lc4/r0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lc4/q0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/q0;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v2, p0, Lc4/q0;->b:Lc4/J1;

    .line 6
    .line 7
    iget-object v3, p0, Lc4/q0;->d:Lc4/r0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Lc4/r0;->G:Lc4/A1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v3, Lc4/r0;->G:Lc4/A1;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lc4/A1;->h(Landroid/os/Bundle;Lc4/J1;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_0
    iget-object v0, v3, Lc4/r0;->G:Lc4/A1;

    .line 25
    .line 26
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v3, Lc4/r0;->G:Lc4/A1;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lc4/A1;->h(Landroid/os/Bundle;Lc4/J1;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
