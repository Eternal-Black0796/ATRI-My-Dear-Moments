.class public Ljp/co/imel/Artemis/BootActivity;
.super Lcom/ies_net/artemis/ArtemisActivity;
.source "BootActivity.java"


# static fields
.field private static firstInstallTime:J = 0x0L

.field private static lastUpdateTime:J = 0x0L

.field private static sharedUserId:Ljava/lang/String; = "none"

.field private static versionCode:I = 0x0

.field private static versionName:Ljava/lang/String; = "none"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisActivity;-><init>()V

    return-void
.end method

.method public static callnativeGetVersionInfo(Landroid/app/NativeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "BootActivity"

    const-string p1, "call callnative"

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "APK INFO :: versionCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Ljp/co/imel/Artemis/BootActivity;->versionCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " / versionName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljp/co/imel/Artemis/BootActivity;->versionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " / firstInstallTime:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-wide v0, Ljp/co/imel/Artemis/BootActivity;->firstInstallTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " / lastUpdateTime:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-wide v0, Ljp/co/imel/Artemis/BootActivity;->lastUpdateTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " / sharedUserId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljp/co/imel/Artemis/BootActivity;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static callnativeSendStatusDeployGate(Landroid/app/NativeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "BootActivity"

    const-string v0, "callnativeSendStatusDeployGate : callNativeTagParam"

    .line 212
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p1}, Lcom/deploygate/sdk/DeployGate;->logDebug(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13

    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@ keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BootActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0, v2, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v4, 0x73

    if-nez v1, :cond_1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 95
    invoke-virtual {p0, v4, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 99
    invoke-virtual {p0, v4, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v5, 0x71

    const/16 v6, 0x8c

    if-nez v1, :cond_3

    if-ne v0, v5, :cond_3

    .line 102
    invoke-virtual {p0, v6, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v7, 0x72

    if-nez v1, :cond_4

    if-ne v0, v7, :cond_4

    .line 105
    invoke-virtual {p0, v6, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v8, 0x20

    if-nez v1, :cond_5

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_5

    .line 107
    invoke-virtual {p0, v8, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x15

    if-ne v0, v1, :cond_6

    const/16 v0, 0x25

    .line 109
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x13

    if-ne v0, v1, :cond_7

    const/16 v0, 0x26

    .line 111
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 112
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x16

    if-ne v0, v1, :cond_8

    const/16 v0, 0x27

    .line 113
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 114
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v9, 0x28

    if-nez v1, :cond_9

    const/16 v1, 0x14

    if-ne v0, v1, :cond_9

    .line 115
    invoke-virtual {p0, v9, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 116
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v10, 0x8f

    if-nez v1, :cond_a

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_a

    .line 117
    invoke-virtual {p0, v10, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 118
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v11, 0x53

    if-nez v1, :cond_b

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_b

    .line 119
    invoke-virtual {p0, v11, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 120
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v12, 0x4c

    if-nez v1, :cond_c

    if-ne v0, v9, :cond_c

    .line 121
    invoke-virtual {p0, v12, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 122
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x32

    if-ne v0, v1, :cond_d

    const/16 v0, 0x56

    .line 123
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 124
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    const/16 v0, 0x70

    .line 125
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 126
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 127
    invoke-virtual {p0, v5, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 128
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    .line 129
    invoke-virtual {p0, v7, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 130
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    .line 131
    invoke-virtual {p0, v4, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 132
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    const/16 v0, 0x74

    .line 133
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 134
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_13

    if-ne v0, v2, :cond_13

    const/16 v0, 0x75

    .line 135
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 136
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    const/16 v0, 0x76

    .line 137
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 138
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0xf

    if-ne v0, v1, :cond_15

    const/16 v0, 0x77

    .line 139
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 141
    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x17

    if-ne v0, v1, :cond_16

    .line 142
    invoke-virtual {p0, v2, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 143
    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0x11

    if-ne v0, v1, :cond_17

    const/16 v0, 0x79

    .line 144
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 145
    :cond_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0x12

    if-ne v0, v1, :cond_18

    .line 146
    invoke-virtual {p0, v6, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 149
    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    const/16 v1, 0x62

    if-ne v0, v1, :cond_19

    .line 150
    invoke-virtual {p0, v2, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 152
    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0x60

    if-ne v0, v1, :cond_1a

    const/16 v0, 0x8b

    .line 153
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 155
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1b

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1b

    .line 156
    invoke-virtual {p0, v8, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto/16 :goto_0

    .line 158
    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x99

    .line 161
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 163
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1d

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1d

    .line 164
    invoke-virtual {p0, v2, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 166
    :cond_1d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v4, 0x65

    if-nez v1, :cond_1e

    if-ne v0, v4, :cond_1e

    .line 167
    invoke-virtual {p0, v6, v2}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 169
    :cond_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1f

    if-ne v0, v4, :cond_1f

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v6, v0}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 172
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_20

    const/16 v1, 0x66

    if-ne v0, v1, :cond_20

    .line 173
    invoke-virtual {p0, v11, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 175
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x67

    if-ne v0, v1, :cond_21

    .line 176
    invoke-virtual {p0, v12, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 178
    :cond_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_22

    const/16 v1, 0x69

    if-ne v0, v1, :cond_22

    const/16 v0, 0x98

    .line 179
    invoke-virtual {p0, v0, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    goto :goto_0

    .line 181
    :cond_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_23

    .line 182
    invoke-virtual {p0, v10, v3}, Ljp/co/imel/Artemis/BootActivity;->EmulateKeyEvent(II)V

    .line 188
    :cond_23
    :goto_0
    invoke-super {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BootActivity"

    .line 30
    invoke-super {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljp/co/imel/Artemis/BootActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Ljp/co/imel/Artemis/BootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 38
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Ljp/co/imel/Artemis/BootActivity;->versionName:Ljava/lang/String;

    .line 39
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Ljp/co/imel/Artemis/BootActivity;->versionCode:I

    .line 40
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sput-wide v1, Ljp/co/imel/Artemis/BootActivity;->firstInstallTime:J

    .line 41
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v1, Ljp/co/imel/Artemis/BootActivity;->lastUpdateTime:J

    .line 42
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    sput-object p1, Ljp/co/imel/Artemis/BootActivity;->sharedUserId:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "versionCode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Ljp/co/imel/Artemis/BootActivity;->versionCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "versionName : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljp/co/imel/Artemis/BootActivity;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstInstallTime : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v1, Ljp/co/imel/Artemis/BootActivity;->firstInstallTime:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastUpdateTime : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v1, Ljp/co/imel/Artemis/BootActivity;->lastUpdateTime:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sharedUserId : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljp/co/imel/Artemis/BootActivity;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0, p1}, Ljp/co/imel/Artemis/BootActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/ies_net/artemis/ArtemisActivity;->onResume()V

    return-void
.end method
