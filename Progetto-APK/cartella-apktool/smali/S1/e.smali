.class public final LS1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/g;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln/g;

    .line 5
    .line 6
    invoke-direct {v0}, Ln/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LS1/e;->a:Ln/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-boolean v0, p0, LS1/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, LS1/e;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, LS1/e;->c:Landroid/os/Bundle;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, LS1/e;->c:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object v1, p0, LS1/e;->c:Landroid/os/Bundle;

    .line 33
    .line 34
    :goto_0
    return-object v0

    .line 35
    :cond_2
    return-object v1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final b(Le0/B;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LS1/e;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LS1/b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LS1/b;-><init>(LS1/e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Le0/B;->a(Le0/l;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, LS1/e;->b:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "SavedStateRegistry was already attached."

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final c(Ljava/lang/String;LS1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, LS1/e;->a:Ln/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/g;->b(Ljava/lang/Object;)Ln/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p1, v1, Ln/c;->H:Ljava/lang/Object;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Ln/c;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Ln/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Ln/g;->J:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iput p1, v0, Ln/g;->J:I

    .line 22
    .line 23
    iget-object p1, v0, Ln/g;->H:Ln/c;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iput-object v1, v0, Ln/g;->G:Ln/c;

    .line 28
    .line 29
    iput-object v1, v0, Ln/g;->H:Ln/c;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object v1, p1, Ln/c;->I:Ln/c;

    .line 33
    .line 34
    iput-object p1, v1, Ln/c;->J:Ln/c;

    .line 35
    .line 36
    iput-object v1, v0, Ln/g;->H:Ln/c;

    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    :goto_1
    check-cast p1, LS1/d;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p2, "SavedStateProvider with the given key is already registered"

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
