.class public final Ll3/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/Set;

.field public final c:Landroid/os/Bundle;

.field public final d:Ljava/util/Map;

.field public final e:I

.field public final f:Ljava/util/Set;

.field public final g:Landroid/os/Bundle;

.field public final h:Ljava/util/Set;

.field public final i:Z

.field public final j:I

.field public k:J


# direct methods
.method public constructor <init>(Ll3/F0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Ll3/G0;->k:J

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Ll3/F0;->g:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object v0, p0, Ll3/G0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p1, Ll3/F0;->a:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Ll3/G0;->b:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v0, p1, Ll3/F0;->b:Landroid/os/Bundle;

    .line 24
    .line 25
    iput-object v0, p0, Ll3/G0;->c:Landroid/os/Bundle;

    .line 26
    .line 27
    iget-object v0, p1, Ll3/F0;->c:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Ll3/G0;->d:Ljava/util/Map;

    .line 34
    .line 35
    iget v0, p1, Ll3/F0;->h:I

    .line 36
    .line 37
    iput v0, p0, Ll3/G0;->e:I

    .line 38
    .line 39
    iget-object v0, p1, Ll3/F0;->d:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ll3/G0;->f:Ljava/util/Set;

    .line 46
    .line 47
    iget-object v0, p1, Ll3/F0;->e:Landroid/os/Bundle;

    .line 48
    .line 49
    iput-object v0, p0, Ll3/G0;->g:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object v0, p1, Ll3/F0;->f:Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Ll3/G0;->h:Ljava/util/Set;

    .line 58
    .line 59
    iget-boolean v0, p1, Ll3/F0;->i:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Ll3/G0;->i:Z

    .line 62
    .line 63
    iget p1, p1, Ll3/F0;->j:I

    .line 64
    .line 65
    iput p1, p0, Ll3/G0;->j:I

    .line 66
    .line 67
    return-void
.end method
