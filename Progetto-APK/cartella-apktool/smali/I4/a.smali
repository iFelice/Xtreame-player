.class public final enum LI4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic G:[LI4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, LI4/a;

    .line 4
    .line 5
    const-string v3, "GRANTED"

    .line 6
    .line 7
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, LI4/a;

    .line 11
    .line 12
    const-string v4, "DENIED"

    .line 13
    .line 14
    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    new-array v4, v4, [LI4/a;

    .line 19
    .line 20
    aput-object v2, v4, v1

    .line 21
    .line 22
    aput-object v3, v4, v0

    .line 23
    .line 24
    sput-object v4, LI4/a;->G:[LI4/a;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI4/a;
    .locals 1

    .line 1
    const-class v0, LI4/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LI4/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LI4/a;
    .locals 1

    .line 1
    sget-object v0, LI4/a;->G:[LI4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, [LI4/a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LI4/a;

    .line 8
    .line 9
    return-object v0
.end method
