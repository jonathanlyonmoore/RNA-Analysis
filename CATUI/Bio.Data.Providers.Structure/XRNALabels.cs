﻿/* 
* Copyright (c) 2009, The University of Texas at Austin
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification, 
* are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, 
* this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice, 
* this list of conditions and the following disclaimer in the documentation and/or other materials 
* provided with the distribution.
*
* Neither the name of The University of Texas at Austin nor the names of its contributors may be 
* used to endorse or promote products derived from this software without specific prior written 
* permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR 
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND 
* FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS 
* BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
* THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

using Bio.Data.Interfaces;

namespace Bio.Data.Providers.Structure
{
    public class LineLabel : BioExtensiblePropertyBase, IStructureModelBioEntity
    {
        public Position Start { get; set; }
        public Position End { get; set; }
        public string Color { get; set; }
        public double LineWeight { get; set; }
        public int AttachedNtIdx { get; set; }
    }

    public class TextLabel : BioExtensiblePropertyBase, IStructureModelBioEntity
    {
        public Position Start { get; set; }
        public string FontFace { get; set; }
        public string FontStyle { get; set; }
        public string FontWeight { get; set; }
        public double FontSize { get; set; }
        public string Color { get; set; }
        public string Text { get; set; }
    }

    public class ParallelogramLabel : BioExtensiblePropertyBase, IStructureModelBioEntity
    {
        public Position Center { get; set; }
        public double Side1Length { get; set; }
        //Angle 1 is the rotation of the entire parallelogram around its center point
        public double Side1Angle { get; set; }
        public double Side2Length { get; set; }
        //Angle 2 is the angle of the parallelogram itself.
        public double Side2Angle { get; set; }
        public bool Closed { get; set; }
        public int AttachedNtIdx { get; set; }
        public double LineWeight { get; set; }
        public string Color { get; set; }
    }

    public class ArcLabel : BioExtensiblePropertyBase, IStructureModelBioEntity
    {
        public Position Center { get; set; }
        public double Radius { get; set; }
        public bool Closed { get; set; }
        public int AttachedNtIdx { get; set; }
        public double LineWeight { get; set; }
        public string Color { get; set; }
        public double Angle1 { get; set; }
        public double Angle2 { get; set; }
    }

    public class ArrowLabel : BioExtensiblePropertyBase, IStructureModelBioEntity
    {
        public Position ArrowTip { get; set; }
        public Position LeftTip { get; set; }
        public double VectorHeadIncrement { get; set; }
        public double Angle { get; set; }
        public int AttachedNtIdx { get; set; }
        public double LineWeight { get; set; }
        public double TailLength { get; set; }
        public string Color { get; set; }
        public bool Closed { get; set; }
    }
}