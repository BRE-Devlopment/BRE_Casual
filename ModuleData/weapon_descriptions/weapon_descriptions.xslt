<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedAxe']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_2h_axe_head_1"/>
      <UsablePiece id="xiii_2h_axe_head_2"/>
      <UsablePiece id="xiii_2h_axe_handle_1"/>
      <UsablePiece id="xiii_2h_axe_handle_2"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_OneHandedBastardAxe']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_2h_axe_head_1"/>
      <UsablePiece id="xiii_2h_axe_handle_1"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedSword']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_2h_sword_blade_1"/>
      <UsablePiece id="xiii_2h_sword_blade_2"/>
      <UsablePiece id="xiii_2h_sword_blade_3"/>
      <UsablePiece id="xiii_2h_sword_guard_1"/>
      <UsablePiece id="xiii_2h_sword_guard_2"/>
      <UsablePiece id="xiii_2h_sword_guard_3"/>
      <UsablePiece id="xiii_2h_sword_grip_1"/>
      <UsablePiece id="xiii_2h_sword_grip_2"/>
      <UsablePiece id="xiii_2h_sword_grip_3"/>
      <UsablePiece id="xiii_2h_sword_pommel_1"/>
      <UsablePiece id="xiii_2h_sword_pommel_2"/>
      <UsablePiece id="xiii_2h_sword_pommel_3"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedPolearm_Bracing']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_spear_blade_1"/>
      <UsablePiece id="xiii_spear_guard_1"/>
      <UsablePiece id="xiii_spear_handle_1"/>
      <UsablePiece id="xiii_spear_pommel_1"/>

      <UsablePiece id="b2_spear_banner_10_almo"/>
      <UsablePiece id="b2_spear_banner_10_ci"/>
      <UsablePiece id="b2_spear_banner_10_ipl"/>
      <UsablePiece id="b2_spear_banner_10_kotf"/>
      <UsablePiece id="b2_spear_banner_10_koh"/>
      <UsablePiece id="b2_spear_banner_10_vsc"/>
      <UsablePiece id="b2_spear_banner_10_xiii"/>
      <UsablePiece id="b2_spear_banner_10_host"/>
      <UsablePiece id="b2_spear_banner_10_svci"/>
      <UsablePiece id="b2_spear_banner_10_maw"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedPolearm_Couching']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="b2_spear_banner_10_almo"/>
      <UsablePiece id="b2_spear_banner_10_ci"/>
      <UsablePiece id="b2_spear_banner_10_ipl"/>
      <UsablePiece id="b2_spear_banner_10_kotf"/>
      <UsablePiece id="b2_spear_banner_10_koh"/>
      <UsablePiece id="b2_spear_banner_10_vsc"/>
      <UsablePiece id="b2_spear_banner_10_xiii"/>
      <UsablePiece id="b2_spear_banner_10_host"/>
      <UsablePiece id="b2_spear_banner_10_svci"/>
      <UsablePiece id="b2_spear_banner_10_maw"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_OneHandedPolearm_NoHorseStop']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_spear_blade_1"/>
      <UsablePiece id="xiii_spear_guard_1"/>
      <UsablePiece id="xiii_spear_handle_1"/>
      <UsablePiece id="xiii_spear_pommel_1"/>

      <UsablePiece id="b2_spear_banner_10_almo"/>
      <UsablePiece id="b2_spear_banner_10_ci"/>
      <UsablePiece id="b2_spear_banner_10_ipl"/>
      <UsablePiece id="b2_spear_banner_10_kotf"/>
      <UsablePiece id="b2_spear_banner_10_koh"/>
      <UsablePiece id="b2_spear_banner_10_vsc"/>
      <UsablePiece id="b2_spear_banner_10_xiii"/>
      <UsablePiece id="b2_spear_banner_10_host"/>
      <UsablePiece id="b2_spear_banner_10_svci"/>
      <UsablePiece id="b2_spear_banner_10_maw"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedPolearm_NoHorseStop']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_spear_blade_1"/>
      <UsablePiece id="xiii_spear_guard_1"/>
      <UsablePiece id="xiii_spear_handle_1"/>
      <UsablePiece id="xiii_spear_pommel_1"/>
      
      <UsablePiece id="b2_spear_banner_10_almo"/>
      <UsablePiece id="b2_spear_banner_10_ci"/>
      <UsablePiece id="b2_spear_banner_10_ipl"/>
      <UsablePiece id="b2_spear_banner_10_kotf"/>
      <UsablePiece id="b2_spear_banner_10_koh"/>
      <UsablePiece id="b2_spear_banner_10_vsc"/>
      <UsablePiece id="b2_spear_banner_10_xiii"/>
      <UsablePiece id="b2_spear_banner_10_host"/>
      <UsablePiece id="b2_spear_banner_10_svci"/>
      <UsablePiece id="b2_spear_banner_10_maw"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_OneHandedSword']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_sword_blade_1"/>
      <UsablePiece id="xiii_sword_blade_3"/>
      <UsablePiece id="xiii_sword_guard_1"/>
      <UsablePiece id="xiii_sword_guard_2"/>
      <UsablePiece id="xiii_sword_guard_3"/>
      <UsablePiece id="xiii_sword_grip_1"/>
      <UsablePiece id="xiii_sword_grip_2"/>
      <UsablePiece id="xiii_sword_grip_3"/>
      <UsablePiece id="xiii_sword_pommel_1"/>
      <UsablePiece id="xiii_sword_pommel_2"/>
      <UsablePiece id="xiii_sword_pommel_3"/>
      <UsablePiece id="xiii_2h_sword_blade_1"/>
      <UsablePiece id="xiii_2h_sword_blade_2"/>
      <UsablePiece id="xiii_2h_sword_guard_1"/>
      <UsablePiece id="xiii_2h_sword_guard_2"/>
      <UsablePiece id="xiii_2h_sword_grip_1"/>
      <UsablePiece id="xiii_2h_sword_grip_2"/>
      <UsablePiece id="xiii_2h_sword_pommel_2"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_OneHandedAxe']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_axe_head_1"/>
      <UsablePiece id="xiii_axe_head_2"/>
      <UsablePiece id="xiii_axe_handle_1"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_OneHandedMace']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_mace_head_1"/>
      <UsablePiece id="xiii_mace_head_2"/>
      <UsablePiece id="xiii_mace_head_3"/>
      <UsablePiece id="xiii_mace_handle_1"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="WeaponDescription[@id='B2_TwoHandedMace']/AvailablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <UsablePiece id="xiii_2h_mace_head_1"/>
      <UsablePiece id="xiii_2h_mace_handle_1"/>
      <UsablePiece id="xiii_2h_mace_pommel_1"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>