.class public final LE1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:LE1/p;


# direct methods
.method public constructor <init>(LE1/p;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LE1/i;->a:Landroid/os/Bundle;

    .line 12
    .line 13
    iput-object p1, p0, LE1/i;->b:LE1/p;

    .line 14
    .line 15
    const-string v1, "selector"

    .line 16
    .line 17
    iget-object p1, p1, LE1/p;->a:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "activeScan"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "selector must not be null"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LE1/i;->b:LE1/p;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LE1/i;->a:Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v1, "selector"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v2, LE1/p;

    .line 17
    .line 18
    invoke-direct {v2, v1, v0}, LE1/p;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    move-object v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, LE1/p;->c:LE1/p;

    .line 24
    .line 25
    :goto_0
    iput-object v1, p0, LE1/i;->b:LE1/p;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    sget-object v0, LE1/p;->c:LE1/p;

    .line 30
    .line 31
    iput-object v0, p0, LE1/i;->b:LE1/p;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, LE1/i;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "activeScan"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LE1/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, LE1/i;

    .line 7
    .line 8
    invoke-virtual {p0}, LE1/i;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LE1/i;->b:LE1/p;

    .line 12
    .line 13
    invoke-virtual {p1}, LE1/i;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, LE1/i;->b:LE1/p;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, LE1/p;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, LE1/i;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, LE1/i;->b()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne v0, p1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LE1/i;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LE1/i;->b:LE1/p;

    .line 5
    .line 6
    invoke-virtual {v0}, LE1/p;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, LE1/i;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DiscoveryRequest{ selector="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LE1/i;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, LE1/i;->b:LE1/p;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", activeScan="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LE1/i;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isValid="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, LE1/i;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, LE1/i;->b:LE1/p;

    .line 37
    .line 38
    invoke-virtual {v1}, LE1/p;->a()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v1, LE1/p;->b:Ljava/util/List;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    xor-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " }"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
